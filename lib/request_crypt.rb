module Request_Crypt
  def self.included(base)
    base.extend ClassMethods
  end

  def ensure_unique(name)
    begin
      self[name] = yield
    end while self.class.exists?(name => self[name])
  end
  module ClassMethods

    def crypt(string, key)
      rq_crypt string, key, "blowfish"
    end

    def decrypt(hash, key)
      rq_decrypt hash, key, "blowfish"
    end

    def rq_crypt(string, key, algorithm)
      cipher = OpenSSL::Cipher.new(algorithm)
      cipher.encrypt
      cipher.key = key
      encrypted_bytes = cipher.update(string)+cipher.final
      str =  Base64.encode64 encrypted_bytes
      str
    end

    def rq_decrypt(hash, key, algorithm)
      begin
        hash = Base64.decode64 hash
        cipher = OpenSSL::Cipher.new(algorithm)
        cipher.decrypt
        cipher.key = key
        plain = cipher.update(hash)+cipher.final
      rescue Exception => e
        false
      end
    end
    def hex_string_to_ascii str
      new_str = ''
      arr = str.split('')
      arr.in_groups_of(2){|c| new_str << ("#{c[0]}#{c[1]}".hex.chr) }
      new_str
    end
  end
end

class ActionController::Base
  include Request_Crypt
end
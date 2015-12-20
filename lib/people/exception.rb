module People

  class Exception < StandardError;
  end

  class Unauthorized < People::Exception;
  end

  class NotFound < People::Exception;
  end

  class Unsupported < People::Exception;
  end

  class ServerError < People::Exception;
  end

  class BadRequest < People::Exception;
  end

  class MissingUserId < People::Exception;
  end

  class MissingConnectionId < People::Exception;
  end

  class AccessDenied < People::Exception;
  end

  class InvalidParameter < People::Exception;
  end

  class InvalidCredentials < People::Exception;
  end

  class InvalidApiNamespace < People::Exception;
  end

end

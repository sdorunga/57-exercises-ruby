class Greeting
  SPECIAL_GREETINGS = {"P-dawg" => "What up P-dawg?"}

  def initialize
    @greeted_names = {}
  end

  def message(name)
    return "Hello, #{name}, nice to see you again!" if already_met?(name)
    return SPECIAL_GREETINGS[name] if SPECIAL_GREETINGS[name]

    remember(name) && "Hello, #{name}, nice to meet you!"
  end

  private

  def remember(name)
    @greeted_names[name] = true
  end

  def already_met?(name)
    !!@greeted_names[name]
  end
end

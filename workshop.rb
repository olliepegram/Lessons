class Members
  def instialize(full_name)
    @full_name = full_name
  end

  def full_name
    @full_name
  end
end

class Coach < Members
  def initialize(full_name, bio, skills)
    @super(full_name)
    @bio = bio
    @skills = skills
  end
end

class Students < Members
  def initialize(full_name, about)
    @super(full_name)
    @about = about
  end
end

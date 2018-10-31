require "rails_helper"


RSpec.describe Movie, type: :model do
  it { should belong_to(:director) }
end

RSpec.describe Movie, type: :model do
  it { should have_many(:characters) }
end

RSpec.describe Movie, type: :model do
  it { should have_many(:actors) }
end

RSpec.describe Actor, type: :model do
  it { should have_many(:characters) }
end

RSpec.describe Actor, type: :model do
  it { should have_many(:movies) }
end

RSpec.describe Director, type: :model do
  it { should have_many(:movies) }
end

RSpec.describe Character, type: :model do
  it { should belong_to(:movie) }
end

RSpec.describe Character, type: :model do
  it { should belong_to(:actor) }
end

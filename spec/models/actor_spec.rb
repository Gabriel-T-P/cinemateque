require 'rails_helper'

RSpec.describe Actor, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name)  }
    it { should validate_presence_of(:birth_date)  }
    it { should validate_presence_of(:nationality)  }
  end
end

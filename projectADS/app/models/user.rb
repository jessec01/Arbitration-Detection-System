class User < ApplicationRecord

    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

    validates :name: presence: { mesage: "Name can't be blank"}
    validates :second_name: presence: {  mesage: "Second name can't be leave blank"}
    validates :email, presence: { mesage: "Email can't be blank"}, format: { with: URI::Mailto::Email::REGEPX, mesage: "Email is not valid"}
    vaidates :phone_number, presence: { mesage: "phone number can't be blanck"}
end

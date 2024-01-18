class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # convidado

    if user.admin?
      can :manage, Unidade
      can :manage, Setor
      can :manage, Profissional
      can :manage, Visitante
    elsif user.funcionario?
      can :read, Visitante
      can :update, Visitante
      cannot :create, [Setor, Unidade, Visitante]
    elsif user.atendente?
      can :manage, Visitante
      cannot :create, [Setor, Unidade]
    end
  end
end

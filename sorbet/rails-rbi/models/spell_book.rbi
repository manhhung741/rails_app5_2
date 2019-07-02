# This is an autogenerated file for dynamic methods in SpellBook
# Please rerun rake rails_rbi:models to regenerate.
# typed: strong

class SpellBook::Relation < ActiveRecord::Relation
  include SpellBook::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: SpellBook)
end

class SpellBook::CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include SpellBook::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: SpellBook)
end

class SpellBook < ApplicationRecord
  extend T::Sig
  extend T::Generic
  extend SpellBook::ModelRelationShared
  extend SpellBook::ClassMethods
  include SpellBook::InstanceMethods
  Elem = type_template(fixed: SpellBook)
end

module SpellBook::InstanceMethods
  extend T::Sig

  sig { returns(Integer) }
  def id(); end

  sig { params(value: Integer).void }
  def id=(value); end

  sig { returns(T.nilable(String)) }
  def name(); end

  sig { params(value: T.nilable(String)).void }
  def name=(value); end

  sig { returns(T.nilable(Wizard)) }
  def wizard(); end

  sig { params(value: T.nilable(Wizard)).void }
  def wizard=(value); end

  sig { returns(T.nilable(Integer)) }
  def wizard_id(); end

  sig { params(value: T.nilable(Integer)).void }
  def wizard_id=(value); end

end

module SpellBook::ClassMethods
  extend T::Sig

end

module SpellBook::ModelRelationShared
  extend T::Sig

  sig { returns(SpellBook::Relation) }
  def all(); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def select(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def order(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def reorder(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def group(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def limit(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def offset(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def joins(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def left_joins(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def left_outer_joins(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def where(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def rewhere(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def preload(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def eager_load(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def includes(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def from(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def lock(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def readonly(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def extending(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def or(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def having(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def create_with(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def distinct(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def references(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def none(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def unscope(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def merge(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SpellBook::Relation) }
  def except(*args, block); end

end

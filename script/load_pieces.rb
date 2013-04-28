Piece.delete_all

Piece.transaction do
  (1..100).each do |i|
  	Piece.create(title: "Stück #{i}", composer: "Komponist #{i}", drawer: 1, number: i)
  end
end
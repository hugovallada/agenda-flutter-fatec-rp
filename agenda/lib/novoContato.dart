class CadastroContato{
 String id;
 String nome;
 String preco;
 //construtor
 CadastroContato(this.id, this.nome, this.preco);
 //Converter um documento em um objeto
 CadastroContato.fromJson(Map<String, dynamic>mapa, String id){
 this.id = id;
 this.nome = mapa['nome'];
 this.preco = mapa['preco'];
 }
 //Converter um OBJETO em um documento
 Map<String, dynamic> toJson(){
 
 return {
 'id' : this.id,
 'nome' : this.nome,
 'preco' : this.preco,
 };
 }
}
package povmt

class Atividade {

	String dono
	String nome
	Integer tempo
	Long data
	String foto
	Integer prioridade
	Boolean lazer
	
	
    static constraints = {
    	dono(nullable:false, blank:false)
    	nome(nullable:false, blank:false)
    	tempo(nullable:false)
    	data(nullable:true)
    	foto(nullable:true)
    	prioridade(nullable:true)
    	lazer(nullable:true)
    }
}

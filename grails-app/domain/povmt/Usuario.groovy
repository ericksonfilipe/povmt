package povmt

class Usuario {

	String login
	static hasMany = [atividades: Atividade]

    static constraints = {
    	login(unique:true)
    }
}

package povmt



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.JSON

@Transactional(readOnly = true)
class AtividadeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Atividade.list(params), model:[atividadeInstanceCount: Atividade.count()]
    }

    def show(Atividade atividadeInstance) {
        respond atividadeInstance
    }

    def create() {
        respond new Atividade(params)
    }
    
    def recuperaAtividades() {
		def atividades = Atividade.findAllByDono(params.dono)
		render atividades as JSON
    }

    @Transactional
    def save(Atividade atividadeInstance) {
        if (atividadeInstance == null) {
            notFound()
            return
        }

        if (atividadeInstance.hasErrors()) {
            respond atividadeInstance.errors, view:'create'
            return
        }

        atividadeInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'atividadeInstance.label', default: 'Atividade'), atividadeInstance.id])
                redirect atividadeInstance
            }
            '*' { respond atividadeInstance, [status: CREATED] }
        }
    }

    def edit(Atividade atividadeInstance) {
        respond atividadeInstance
    }

    @Transactional
    def update(Atividade atividadeInstance) {
        if (atividadeInstance == null) {
            notFound()
            return
        }

        if (atividadeInstance.hasErrors()) {
            respond atividadeInstance.errors, view:'edit'
            return
        }

        atividadeInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Atividade.label', default: 'Atividade'), atividadeInstance.id])
                redirect atividadeInstance
            }
            '*'{ respond atividadeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Atividade atividadeInstance) {

        if (atividadeInstance == null) {
            notFound()
            return
        }

        atividadeInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Atividade.label', default: 'Atividade'), atividadeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'atividadeInstance.label', default: 'Atividade'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

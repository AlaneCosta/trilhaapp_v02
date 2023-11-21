import 'package:trilhaapp/model/tarefa.dart';

class TarefaRepository {
  final List<tarefa> _tarefas = [];

  Future<void> adicionar(tarefa tarefa) async {
    await Future.delayed(const Duration(milliseconds: 0));
    _tarefas.add(tarefa);
  }

  Future<void> alterar(String id, bool concluido) async {
    await Future.delayed(const Duration(milliseconds: 0));
    _tarefas.where((tarefa) => tarefa.id == id).first.concluido = concluido;
  }

  Future<void> remove(String id) async {
    await Future.delayed(const Duration(milliseconds: 0));
    _tarefas.remove(_tarefas.where((tarefa) => tarefa.id == id).first);
  }

  Future<List<tarefa>> listar() async {
    await Future.delayed(const Duration(milliseconds: 0));
    return _tarefas;
  }

  Future<List<tarefa>> listarNaoConcluidas() async {
    await Future.delayed(const Duration(milliseconds: 0));
    return _tarefas.where((tarefa) => !tarefa.concluido).toList();
  }
}

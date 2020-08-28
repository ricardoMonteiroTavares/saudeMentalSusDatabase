String getWeekday(int weekDay) {
  switch (weekDay) {
    case 1:
      return 'Domingo';
    case 2:
      return 'Segunda-Feira';
    case 3:
      return 'Terça-Feira';
    case 4:
      return 'Quarta-Feira';
    case 5:
      return 'Quinta-Feira';
    case 6:
      return 'Sexta-Feira';
    case 7:
      return 'Sábado';
    default:
      return 'Dia não encontrado';
  }
}

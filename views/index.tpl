%rebase("base.tpl", title="Kviz")

  <h1>Kviz</h1>

  <h3>
    Pozdravljeni v mojem kvizu! Na vsako vprašanje odgovorite samo z eno besedo, 
    ki jo vnesite v polje (brez uporabe šumnikov). Igra se konča z zmago, 
    če odgovorite na 5 vprašanj pravilno, pri čemer se lahko zmotite največ dvakrat. 
    Veliko sreče pri odgovarjanju!
  </h3>

  <form action="/nova_igra/" method="post">
    <button type="submit">Nova igra</button>
  </form>

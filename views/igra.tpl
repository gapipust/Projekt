%import model
%rebase("base.tpl", title="Kviz")

  <h1>Kviz</h1>

  <blockquote>
    <h2>{{igra.trenutno_vprasanje()}}</h2>
  </blockquote>

  <table>
    <tr>
      <td>
        Število napak: <b>{{igra.stevilo_napacnih()}}</b>
      </td>
    </tr>
    <tr>  
      <td>
        Število pravilnih odgovorov: <b>{{igra.stevilo_pravilnih()}}</b>
      </td>
    </tr>
  </table>

%if poskus == model.ZMAGA:
  <h1>ZMAGA!</h1>
  <b>Za začetek nove igre kliknite na gumb Nova igra.</b>
  <h3> </h3>

  <form action="/nova_igra/" method="post">
    <button type="submit">Nova igra</button>
  </form>

%elif poskus == model.PORAZ:
  <h1>IZGUBILI STE!</h1>
  <b>Za začetek nove igre kliknite na gumb Nova igra.</b>
  <h3> </h3>

  <form action="/nova_igra/" method="post">
    <button type="submit">Nova igra</button>
  </form>

%end

<h3> </h3>
<form action="/igra/" method="post">
    Odgovor: <input type="text" name="odgovor">
    <button type="submit">Pošlji odgovor</button>
</form>

%end

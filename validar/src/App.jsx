import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import { consumirDatosAPI } from './service/serviciostore'

function App() {
 
  consumirDatosAPI().then(function(respuesta){
    console.log(respuesta)
  })
  

}

export default App

import React, { useState, useEffect } from 'react'
import axios from 'axios'
import { useParams } from 'react-router-dom'

// Em ambos os casos, o código demonstrado serve para recuperar os dados através da URL
// exemplo: localhost:3000/airlines/ALGUM-VALOR
// console.log(params) => ALGUM-VALOR

// react router dom 5
// const Airline = (props) => {
// console.log(props.params.match.slug)
// const uri = props.params.match.slug
// const url = `/airlines/${uri}`

// react router dom 6
// import { useParams } from 'react-router-dom'
// const params = useParams()
// console.log(params)

const Airline = () => {

    const params = useParams()
    
    const [airline, setAirline] = useState([])

    useEffect(() => {
        axios.get(`/api/v1/${params}`)
            .then(response => {
                setAirline(response)
            })
            .catch(response => {
                console.log(response)
            })
    }, [])

    return (
        <div>This is the Airlines#show view for our app.</div>
    )
}

export default Airline
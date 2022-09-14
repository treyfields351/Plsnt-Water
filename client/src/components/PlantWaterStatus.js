import React, { Component } from 'react'
import { withRouter } from 'react-router'

class PlantWaterStatus extends Component {
    constructor(props) {
        super(props);
        const now = new Date();
        this.state = {
            lastWatered: new Date(now.getFullYear(), now.getMonth(), now.getDate() -7),
            lastWateredFormatted: ""
        }
        this.waterPlant = this.waterPlant.bind(this)
        //this.getLastWater = this.getLastWater.bind(this)
        this.waterDateToString = this.waterDateToString.bind(this)
    }

    componentDidMount() {
        //getLastWater(this.props.plant.id)
    }

    waterPlant() {
        this.setState({lastWatered: new Date()})
        console.log('watering plant', this.props.plant)
    }

    getLastWater() {
        //const waterData = fetch(this.props.plant.id)
        //const waterDate = new Date(waterData.last)
        //setState({lastWatered: waterDate})
    }

    waterDateToString() {
        const lastWaterDate = this.state.lastWatered;
        const asDate = new Date(lastWaterDate);
        return asDate.toLocaleDateString();
    }

    render() {
        return (
            <div>
                <button className="update-button"
        onClick={this.waterPlant}>Water Plant</button>
            <span style={{paddingLeft: "2rem"}}>Last watered{this.waterDateToString()}</span>
            </div>
        )
    }
}
export default withRouter(PlantWaterStatus)
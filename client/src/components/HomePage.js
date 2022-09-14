import React from 'react'
import bitplant from '../images/bitmap_plant.png'

export default function HomePage() {
	return (
		<div className="description-container">
			<div className="description">
				<h1 className="description-title">WaterMe</h1>
				<p className="description-tagline">an easy way<br />to care for your leafy friends.</p>
			</div>
			<img src={bitplant} alt="" className="bitplant" />
		</div>
	)
}
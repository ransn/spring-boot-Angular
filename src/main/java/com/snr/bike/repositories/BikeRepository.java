package com.snr.bike.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.snr.bike.models.Bike;

public interface BikeRepository extends JpaRepository<Bike, Long> {
	

}

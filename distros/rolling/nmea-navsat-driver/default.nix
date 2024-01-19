
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nmea-msgs, python3Packages, pythonPackages, rclpy, sensor-msgs, tf-transformations }:
buildRosPackage {
  pname = "ros-rolling-nmea-navsat-driver";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nmea_navsat_driver-release/archive/release/rolling/nmea_navsat_driver/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "e8cbe6a0cd088496471fef8f084b0d6c6b737c630989990d2165c63aec7fa9d5";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs nmea-msgs python3Packages.numpy python3Packages.pyserial rclpy sensor-msgs tf-transformations ];

  meta = {
    description = ''Package to parse NMEA strings and publish a very simple GPS message. Does not
        require or use the GPSD deamon.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

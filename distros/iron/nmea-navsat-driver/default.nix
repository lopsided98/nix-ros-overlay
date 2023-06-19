
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nmea-msgs, python3Packages, pythonPackages, rclpy, sensor-msgs, tf-transformations }:
buildRosPackage {
  pname = "ros-iron-nmea-navsat-driver";
  version = "2.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nmea_navsat_driver-release/archive/release/iron/nmea_navsat_driver/2.0.0-3.tar.gz";
    name = "2.0.0-3.tar.gz";
    sha256 = "da5c9d407335d81a0ac8ad93af42a632fb1e2b87139145aacef860d25b0129c3";
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

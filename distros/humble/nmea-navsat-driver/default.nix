
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nmea-msgs, python3Packages, pythonPackages, rclpy, sensor-msgs, tf-transformations }:
buildRosPackage {
  pname = "ros-humble-nmea-navsat-driver";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nmea_navsat_driver-release/archive/release/humble/nmea_navsat_driver/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "5fdf08a9869f81f1e453ba03e4ae717d35500f9b749584115c1d78be0001524a";
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

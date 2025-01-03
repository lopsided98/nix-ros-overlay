
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nmea-msgs, python3Packages, rclpy, sensor-msgs, tf-transformations }:
buildRosPackage {
  pname = "ros-jazzy-nmea-navsat-driver";
  version = "2.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nmea_navsat_driver-release/archive/release/jazzy/nmea_navsat_driver/2.0.1-3.tar.gz";
    name = "2.0.1-3.tar.gz";
    sha256 = "9e97b4586c403ca57bc73b8c04b67ab736add4d0e800ba54ea76b1554bd0aa67";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs nmea-msgs python3Packages.numpy python3Packages.pyserial rclpy sensor-msgs tf-transformations ];

  meta = {
    description = "Package to parse NMEA strings and publish a very simple GPS message. Does not
        require or use the GPSD deamon.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

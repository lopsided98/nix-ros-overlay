
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nmea-msgs, python3Packages, rclpy, sensor-msgs, tf-transformations }:
buildRosPackage {
  pname = "ros-lyrical-nmea-navsat-driver";
  version = "2.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nmea_navsat_driver-release/archive/release/lyrical/nmea_navsat_driver/2.0.1-4.tar.gz";
    name = "2.0.1-4.tar.gz";
    sha256 = "bc53c0e19baf038d16c948c4a53c23cde1c60506e0c2df19b9aeaef9040b7001";
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

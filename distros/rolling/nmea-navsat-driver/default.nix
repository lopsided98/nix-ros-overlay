
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nmea-msgs, python3Packages, pythonPackages, rclpy, sensor-msgs, tf-transformations }:
buildRosPackage {
  pname = "ros-rolling-nmea-navsat-driver";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nmea_navsat_driver-release/archive/release/rolling/nmea_navsat_driver/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "4c8f9602db904910a10c41b97ed5305e0cb342bd93a79591bf7ca46b50e6d7b1";
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

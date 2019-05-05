
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, pythonPackages, nmea-msgs, rospy, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-nmea-navsat-driver";
  version = "0.5.1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/nmea_navsat_driver-release/archive/release/melodic/nmea_navsat_driver/0.5.1-0.tar.gz;
    sha256 = "c502e261f11dee9d169b96c13eec505a7251157364aeac7201a6518740559557";
  };

  checkInputs = [ roslint ];
  propagatedBuildInputs = [ pythonPackages.pyserial sensor-msgs nmea-msgs rospy geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package to parse NMEA strings and publish a very simple GPS message. Does not 
    require or use the GPSD deamon.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

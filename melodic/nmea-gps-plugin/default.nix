
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, gazeboSimulator, geodesy, geographic-msgs, quaternion-operation, eigen, rosdoc-lite, roscpp, nmea-msgs }:
buildRosPackage {
  pname = "ros-melodic-nmea-gps-plugin";
  version = "0.0.1-r3";

  src = fetchurl {
    url = https://github.com/OUXT-Polaris/nmea_gps_plugin-release/archive/release/melodic/nmea_gps_plugin/0.0.1-3.tar.gz;
    sha256 = "d53ff70694128cf5d6b5cecad231c4cdd64deaa3f764fd116186419105d177b0";
  };

  buildInputs = [ gazebo-ros gazeboSimulator.gazebo geographic-msgs geodesy quaternion-operation eigen roscpp nmea-msgs ];
  propagatedBuildInputs = [ gazebo-ros gazeboSimulator.gazebo geographic-msgs geodesy quaternion-operation eigen rosdoc-lite roscpp nmea-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nmea_gps_plugin package'';
    license = with lib.licenses; [ asl20 ];
  };
}

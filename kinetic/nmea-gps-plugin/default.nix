
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, gazeboSimulator, geodesy, geographic-msgs, quaternion-operation, eigen, rosdoc-lite, roscpp, nmea-msgs }:
buildRosPackage {
  pname = "ros-kinetic-nmea-gps-plugin";
  version = "0.0.1-r1";

  src = fetchurl {
    url = https://github.com/OUXT-Polaris/nmea_gps_plugin-release/archive/release/kinetic/nmea_gps_plugin/0.0.1-1.tar.gz;
    sha256 = "b32f4f87250f0216a93d4a603e46d8661093a1a54f9e5ae2e43cba6102bd98f0";
  };

  buildInputs = [ gazebo-ros gazeboSimulator.gazebo geographic-msgs geodesy quaternion-operation eigen roscpp nmea-msgs ];
  propagatedBuildInputs = [ gazebo-ros gazeboSimulator.gazebo geographic-msgs geodesy quaternion-operation eigen rosdoc-lite roscpp nmea-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nmea_gps_plugin package'';
    license = with lib.licenses; [ asl20 ];
  };
}

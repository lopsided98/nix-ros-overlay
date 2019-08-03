
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, gazeboSimulator, geodesy, geographic-msgs, quaternion-operation, eigen, rosdoc-lite, roscpp, nmea-msgs }:
buildRosPackage {
  pname = "ros-kinetic-nmea-gps-plugin";
  version = "0.0.2-r1";

  src = fetchurl {
    url = https://github.com/OUXT-Polaris/nmea_gps_plugin-release/archive/release/kinetic/nmea_gps_plugin/0.0.2-1.tar.gz;
    sha256 = "c20f1eb199a0cae99e3f43c3ad71538ae2d6b172d6d6faae2b9e0e0931a35b19";
  };

  buildInputs = [ gazebo-ros gazeboSimulator.gazebo geographic-msgs geodesy quaternion-operation eigen roscpp nmea-msgs ];
  propagatedBuildInputs = [ gazebo-ros gazeboSimulator.gazebo geographic-msgs geodesy quaternion-operation eigen rosdoc-lite roscpp nmea-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nmea_gps_plugin package'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, gazebo, gazebo-ros, geodesy, geographic-msgs, nmea-msgs, quaternion-operation, roscpp, rosdoc-lite }:
buildRosPackage {
  pname = "ros-kinetic-nmea-gps-plugin";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/nmea_gps_plugin-release/archive/release/kinetic/nmea_gps_plugin/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "c20f1eb199a0cae99e3f43c3ad71538ae2d6b172d6d6faae2b9e0e0931a35b19";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen gazebo gazebo-ros geodesy geographic-msgs nmea-msgs quaternion-operation roscpp rosdoc-lite ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nmea_gps_plugin package'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, apr, boost, catkin, cpp-common, log4cxx, rosbuild, rostime, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-rosconsole";
  version = "1.12.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosconsole/1.12.15-1.tar.gz";
    name = "1.12.15-1.tar.gz";
    sha256 = "9a721bc174629519d0c11ebb80206b1279fc7cfdc966aba33fab2b74e0dfbac4";
  };

  buildType = "catkin";
  buildInputs = [ boost rosunit ];
  propagatedBuildInputs = [ apr cpp-common log4cxx rosbuild rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS console output library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

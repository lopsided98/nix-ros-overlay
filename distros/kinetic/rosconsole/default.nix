
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, apr, boost, catkin, cpp-common, log4cxx, rosbuild, rostime, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-rosconsole";
  version = "1.12.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosconsole/1.12.17-1.tar.gz";
    name = "1.12.17-1.tar.gz";
    sha256 = "7fcfa3051aa6fe27c8122015c6af08b7140758fd97c09d511dce4641b1c76cc7";
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

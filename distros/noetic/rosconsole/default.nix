
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, apr, boost, catkin, cpp-common, log4cxx, rosbuild, rostime, rosunit }:
buildRosPackage {
  pname = "ros-noetic-rosconsole";
  version = "1.14.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosconsole-release/archive/release/noetic/rosconsole/1.14.2-1.tar.gz";
    name = "1.14.2-1.tar.gz";
    sha256 = "83fe859de24fab7a87198c767fb0e54c309b1e2addfb5d59e6cb9fab3f80840c";
  };

  buildType = "catkin";
  buildInputs = [ rosunit ];
  propagatedBuildInputs = [ apr boost cpp-common log4cxx rosbuild rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS console output library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

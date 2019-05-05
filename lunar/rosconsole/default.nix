
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cpp-common, apr, rosbuild, catkin, rostime, rosunit, log4cxx }:
buildRosPackage {
  pname = "ros-lunar-rosconsole";
  version = "1.13.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/rosconsole/1.13.7-0.tar.gz;
    sha256 = "8c91bec8a8488b6abbf9046f1b480d3ec2eebd500b5f84d1d29659a3d0e7c35d";
  };

  buildInputs = [ boost cpp-common apr rostime rosunit log4cxx ];
  propagatedBuildInputs = [ cpp-common apr rosbuild rostime log4cxx ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS console output library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, apr, boost, catkin, cpp-common, log4cxx, rosbuild, rostime, rosunit }:
buildRosPackage {
  pname = "ros-melodic-rosconsole";
  version = "1.13.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosconsole-release/archive/release/melodic/rosconsole/1.13.17-1.tar.gz";
    name = "1.13.17-1.tar.gz";
    sha256 = "fd2f78f1b84c4510a76bd8ac553e24170f5c0da00c83d4e709e906fd29f001ef";
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

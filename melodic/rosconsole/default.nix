
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cpp-common, boost, apr, rosbuild, catkin, rostime, rosunit, log4cxx }:
buildRosPackage {
  pname = "ros-melodic-rosconsole";
  version = "1.13.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosconsole-release/archive/release/melodic/rosconsole/1.13.10-0.tar.gz;
    sha256 = "a16be47247f622748425d2165afd1a83abe00a57dbe77ef98e801bc5d64d9595";
  };

  propagatedBuildInputs = [ cpp-common apr rosbuild rostime log4cxx ];
  nativeBuildInputs = [ catkin boost cpp-common apr rostime rosunit log4cxx ];

  meta = {
    description = ''ROS console output library.'';
    #license = lib.licenses.BSD;
  };
}

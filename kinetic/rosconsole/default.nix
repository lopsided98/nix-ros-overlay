
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, apr, rosunit, cpp-common, rostime, rosbuild, log4cxx }:
buildRosPackage {
  pname = "ros-kinetic-rosconsole";
  version = "1.12.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosconsole/1.12.14-0.tar.gz";
    name = "1.12.14-0.tar.gz";
    sha256 = "ae6159a3efce8bdcb74ee15faaf489abb69d99cc16180d21caa9ff0bc518b18c";
  };

  buildType = "catkin";
  buildInputs = [ boost apr rosunit cpp-common rostime log4cxx ];
  propagatedBuildInputs = [ apr cpp-common rostime rosbuild log4cxx ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS console output library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

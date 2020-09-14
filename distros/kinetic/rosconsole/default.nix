
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, apr, boost, catkin, cpp-common, log4cxx, rosbuild, rostime, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-rosconsole";
  version = "1.12.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosconsole/1.12.16-1.tar.gz";
    name = "1.12.16-1.tar.gz";
    sha256 = "ed0057e2c129ee74a997b5a517ace606bdf47de19e3170a41ad562cd9c57c5dd";
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

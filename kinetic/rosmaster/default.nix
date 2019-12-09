
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosgraph, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-rosmaster";
  version = "1.12.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosmaster/1.12.14-0.tar.gz";
    name = "1.12.14-0.tar.gz";
    sha256 = "bec0eaa1d2bac16babf2b109cc419c4c7d8352fd7c077cf1ada6a96809d80dec";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosgraph pythonPackages.defusedxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS <a href="http://ros.org/wiki/Master">Master</a> implementation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

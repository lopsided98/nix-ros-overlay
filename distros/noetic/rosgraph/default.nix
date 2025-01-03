
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-rosgraph";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosgraph/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "be16fd09a2ffab0c07fa263a392ed60db077275237d9aa5014fbca4e98f949ee";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ python3Packages.mock ];
  propagatedBuildInputs = [ python3Packages.netifaces python3Packages.pyyaml python3Packages.rospkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "rosgraph contains the rosgraph command-line tool, which prints
    information about the ROS Computation Graph. It also provides an
    internal library that can be used by graphical tools.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

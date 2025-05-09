
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-rosgraph";
  version = "1.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosgraph/1.17.2-1.tar.gz";
    name = "1.17.2-1.tar.gz";
    sha256 = "1ae84653f179734dfd392e01811bc5df5ce0ac0ee8f32c20ab59b066188a1415";
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

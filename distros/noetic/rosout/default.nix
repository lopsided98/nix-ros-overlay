
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rosgraph-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosout";
  version = "1.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosout/1.17.3-1.tar.gz";
    name = "1.17.3-1.tar.gz";
    sha256 = "be9efec3f09acc92eb1e3d6401200f32856b464b6b847632c5fb36cc0dacacfe";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp rosgraph-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "System-wide logging mechanism for messages sent to the /rosout topic.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

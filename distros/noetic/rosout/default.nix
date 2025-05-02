
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rosgraph-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosout";
  version = "1.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosout/1.17.1-1.tar.gz";
    name = "1.17.1-1.tar.gz";
    sha256 = "ce297696e1eb6568d2c9fbcf5c018b3bf7d983cd5f5f6b1dfce78bf855c4bf57";
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

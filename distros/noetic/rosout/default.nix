
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rosgraph-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosout";
  version = "1.17.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosout/1.17.4-1.tar.gz";
    name = "1.17.4-1.tar.gz";
    sha256 = "15124c6009f0c475d1070c468f7664fff8ad6cd50bff413e39e07d889933a3cf";
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

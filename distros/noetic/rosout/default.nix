
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rosgraph-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosout";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosout/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "2c8f58b0499e910b1bddb7aa7da254388ae4b6a761d6d2edf3efbcabfbae25d4";
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

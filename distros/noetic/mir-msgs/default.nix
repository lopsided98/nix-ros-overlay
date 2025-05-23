
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-mir-msgs";
  version = "1.1.8-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/mir_msgs/1.1.8-1.tar.gz";
    name = "1.1.8-1.tar.gz";
    sha256 = "b3aa0dbb4f4d173d7948ed4c05f40df49c91af3fd88b99bcf0fd7f65a805f04c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Message definitions for the MiR robot";
    license = with lib.licenses; [ bsd3 ];
  };
}

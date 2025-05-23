
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-geometry-msgs";
  version = "1.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/noetic/geometry_msgs/1.13.2-1.tar.gz";
    name = "1.13.2-1.tar.gz";
    sha256 = "fd528a59a032fb6b920b7a27a4012981567b79584a8195eddb376428e99c71d7";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "geometry_msgs provides messages for common geometric primitives
    such as points, vectors, and poses. These primitives are designed
    to provide a common data type and facilitate interoperability
    throughout the system.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

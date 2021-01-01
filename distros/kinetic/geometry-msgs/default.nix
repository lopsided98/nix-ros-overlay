
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-geometry-msgs";
  version = "1.12.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/kinetic/geometry_msgs/1.12.7-0.tar.gz";
    name = "1.12.7-0.tar.gz";
    sha256 = "72c6e3da3f14bcd688dd4fd56465d2abb1a32d95aec1ecef94df123dee2c52a5";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''geometry_msgs provides messages for common geometric primitives
    such as points, vectors, and poses. These primitives are designed
    to provide a common data type and facilitate interoperability
    throughout the system.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

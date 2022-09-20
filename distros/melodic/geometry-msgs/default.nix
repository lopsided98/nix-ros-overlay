
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-geometry-msgs";
  version = "1.12.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/melodic/geometry_msgs/1.12.8-1.tar.gz";
    name = "1.12.8-1.tar.gz";
    sha256 = "cbac8c272635cd628ac4ea51b1bbfcba1070c018d84c27da08af484512870d1c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
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

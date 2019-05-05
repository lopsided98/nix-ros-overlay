
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-geometry-msgs";
  version = "1.12.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_msgs-release/archive/release/lunar/geometry_msgs/1.12.7-0.tar.gz;
    sha256 = "3e1701e2603d4330bd85b7b41edafd7f9b713de553c5eb5095042af4eec0c4e0";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''geometry_msgs provides messages for common geometric primitives
    such as points, vectors, and poses. These primitives are designed
    to provide a common data type and facilitate interoperability
    throughout the system.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

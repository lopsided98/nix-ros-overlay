
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-geometry-msgs";
  version = "1.12.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_msgs-release/archive/release/melodic/geometry_msgs/1.12.7-0.tar.gz;
    sha256 = "60734262caf065a7eabc82f5c4033e3107a00a204e706a3884d6ee12fcac4d11";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''geometry_msgs provides messages for common geometric primitives
    such as points, vectors, and poses. These primitives are designed
    to provide a common data type and facilitate interoperability
    throughout the system.'';
    #license = lib.licenses.BSD;
  };
}

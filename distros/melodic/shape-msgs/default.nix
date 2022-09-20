
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-shape-msgs";
  version = "1.12.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/melodic/shape_msgs/1.12.8-1.tar.gz";
    name = "1.12.8-1.tar.gz";
    sha256 = "6976133b7282f8d56d0b97419174fb9dce5b41c8ac1d3ca708b7616ce138ffe3";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains messages for defining shapes, such as simple solid
    object primitives (cube, sphere, etc), planes, and meshes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

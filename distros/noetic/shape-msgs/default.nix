
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-shape-msgs";
  version = "1.13.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/noetic/shape_msgs/1.13.1-1.tar.gz";
    name = "1.13.1-1.tar.gz";
    sha256 = "19b5b1b4c54b987382ffd74d4538de2c81c32f1d59469244f9addae3575cdfdd";
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

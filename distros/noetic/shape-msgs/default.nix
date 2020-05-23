
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-shape-msgs";
  version = "1.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/noetic/shape_msgs/1.13.0-1.tar.gz";
    name = "1.13.0-1.tar.gz";
    sha256 = "fc51b07bbebcc317b5a7757b03a6618bbf6940b714d2e1c5eb5a8381f371f179";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains messages for defining shapes, such as simple solid
    object primitives (cube, sphere, etc), planes, and meshes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

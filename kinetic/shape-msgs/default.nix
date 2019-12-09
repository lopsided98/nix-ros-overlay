
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, std-msgs, catkin, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-shape-msgs";
  version = "1.12.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/kinetic/shape_msgs/1.12.7-0.tar.gz";
    name = "1.12.7-0.tar.gz";
    sha256 = "35157ebb79cdaa9df362b514b3b19a6065fc2c5db4cb17fb3d7a2390a6d0e3ca";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains messages for defining shapes, such as simple solid
    object primitives (cube, sphere, etc), planes, and meshes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

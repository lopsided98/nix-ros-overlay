
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-shape-msgs";
  version = "1.12.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_msgs-release/archive/release/lunar/shape_msgs/1.12.7-0.tar.gz;
    sha256 = "07cc919fbfab9432573cedbec896e172ffa0ab084915245d300ac170cb22f503";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains messages for defining shapes, such as simple solid
    object primitives (cube, sphere, etc), planes, and meshes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

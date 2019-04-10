
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, genmsg, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-view-controller-msgs";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/view_controller_msgs-release/archive/release/lunar/view_controller_msgs/0.1.3-0.tar.gz;
    sha256 = "4eac1679f3fcb6bf713a3fcb1b85285b8aab60623a2ae166ea49f88e67c10631";
  };

  buildInputs = [ std-msgs genmsg message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for (camera) view controllers'';
    #license = lib.licenses.BSD;
  };
}

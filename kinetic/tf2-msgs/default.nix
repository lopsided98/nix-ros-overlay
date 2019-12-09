
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, actionlib-msgs, catkin }:
buildRosPackage {
  pname = "ros-kinetic-tf2-msgs";
  version = "0.5.20";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/kinetic/tf2_msgs/0.5.20-0.tar.gz";
    name = "0.5.20-0.tar.gz";
    sha256 = "92a2fe41999f309f1214cb057dffe83f2c303e584f2dd6792356df02768a0f39";
  };

  buildType = "catkin";
  buildInputs = [ message-generation geometry-msgs actionlib-msgs ];
  propagatedBuildInputs = [ message-generation geometry-msgs actionlib-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

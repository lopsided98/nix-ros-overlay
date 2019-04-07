
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, uuid-msgs, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-geographic-msgs";
  version = "0.5.2";

  src = fetchurl {
    url = https://github.com/ros-geographic-info/geographic_info-release/archive/release/kinetic/geographic_msgs/0.5.2-0.tar.gz;
    sha256 = "443a30531ab1edbefc9935c53bd524bfb7532bf028f472dbb277d6da97d5ffe1";
  };

  buildInputs = [ uuid-msgs message-generation std-msgs geometry-msgs ];
  propagatedBuildInputs = [ std-msgs uuid-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for Geographic Information Systems.'';
    #license = lib.licenses.BSD;
  };
}

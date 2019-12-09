
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, std-msgs, catkin, message-generation, uuid-msgs }:
buildRosPackage {
  pname = "ros-kinetic-geographic-msgs";
  version = "0.5.2";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/geographic_info-release/archive/release/kinetic/geographic_msgs/0.5.2-0.tar.gz";
    name = "0.5.2-0.tar.gz";
    sha256 = "443a30531ab1edbefc9935c53bd524bfb7532bf028f472dbb277d6da97d5ffe1";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs message-generation uuid-msgs std-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for Geographic Information Systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

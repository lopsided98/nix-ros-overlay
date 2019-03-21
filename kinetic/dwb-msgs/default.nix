
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, nav-msgs, message-runtime, nav-2d-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dwb-msgs";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/dwb_msgs/0.2.5-0.tar.gz;
    sha256 = "7d22ff9b120f812928567f20651cfe110c57e473b7c7ba8199cf279b6fc69760";
  };

  propagatedBuildInputs = [ nav-msgs message-runtime geometry-msgs nav-2d-msgs ];
  nativeBuildInputs = [ nav-msgs message-generation catkin nav-2d-msgs geometry-msgs ];

  meta = {
    description = ''Message/Service definitions specifically for the dwb_local_planner'';
    #license = lib.licenses.BSD;
  };
}

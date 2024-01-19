
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-pluginlib-tutorials";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_tutorials-release/archive/release/noetic/pluginlib_tutorials/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "7ab5def4de3d6de1478cb73dad4610ae045d327076ef56c4815b5836faf684ba";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pluginlib_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

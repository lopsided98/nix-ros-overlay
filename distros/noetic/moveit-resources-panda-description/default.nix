
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-moveit-resources-panda-description";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/noetic/moveit_resources_panda_description/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "5fa6bda81b6bdbc7d881bfe593c83aa83e90dae976359c1dac53048b5fd180ec";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''panda Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

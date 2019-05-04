
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-micros-swarm-framework";
  version = "0.0.17-r2";

  src = fetchurl {
    url = https://github.com/xuefengchang/micros_swarm_framework-release/archive/release/kinetic/micros_swarm_framework/0.0.17-2.tar.gz;
    sha256 = "6b74dc5baa96989a8b84b9fb28e0faab17744fe9bbeb949b975a4c7b0eb17d87";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is a programming framework to facilitate application development involving robot swarms. It makes coding for swarms much easier by providing an adequate swarm-level abstraction, as well as tools for swarm management, various communication mechanisms and so on. It also provides essential data structures, such as Neighbor, Swarm, and Virtual Stigmergy, to the user. Most importantly, it is completely compatible with ROS Indigo and presented in the form of a C++ library, which means that all resources in the ROS ecosystem are still available to the user. It is currently  extensible to Opensplice DDS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

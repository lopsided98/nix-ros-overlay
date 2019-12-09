
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, pluginlib, chomp-motion-planner, catkin }:
buildRosPackage {
  pname = "ros-kinetic-moveit-chomp-optimizer-adapter";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_chomp_optimizer_adapter/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "a556ad4a3f8ef1ab4a68c2676f72832e7a80dfc421a79765c65000acd4e5a301";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core pluginlib chomp-motion-planner ];
  propagatedBuildInputs = [ moveit-core pluginlib chomp-motion-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt planning request adapter utilizing chomp for solution optimization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

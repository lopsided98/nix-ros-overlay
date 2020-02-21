
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher }:
buildRosPackage {
  pname = "ros-melodic-moveit-resources";
  version = "0.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/melodic/moveit_resources/0.6.5-1.tar.gz";
    name = "0.6.5-1.tar.gz";
    sha256 = "64c9130100b43f8eefd7aa006c4d7d82d8a5e936c3f8082ab8421f83962862f9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

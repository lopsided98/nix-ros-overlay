
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher }:
buildRosPackage {
  pname = "ros-lunar-moveit-resources";
  version = "0.6.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit_resources-release/archive/release/lunar/moveit_resources/0.6.4-0.tar.gz;
    sha256 = "ca77c9a185eedc245dc1baab6f8b3d31c47561cbcd7574feeb8bb595caca04c0";
  };

  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-lunar-moveit-planners";
  version = "0.9.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_planners/0.9.12-1.tar.gz;
    sha256 = "c865cf3dbee734862520da59cd514455e85cd80bfe896ed5abce416322fe0edc";
  };

  propagatedBuildInputs = [ moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapacakge that installs all available planners for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

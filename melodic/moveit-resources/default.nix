
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robot-state-publisher, joint-state-publisher, catkin }:
buildRosPackage {
  pname = "ros-melodic-moveit-resources";
  version = "0.6.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/melodic/moveit_resources/0.6.4-0.tar.gz";
    name = "0.6.4-0.tar.gz";
    sha256 = "ae728a1d284591ce8080f4cad69bcb5d143211ba07ef05055585541a3fe94915";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-publisher joint-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

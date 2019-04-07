
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, controller-manager, tf, catkin, multi-jackal-description, robot-localization, urdf, robot-state-publisher, interactive-marker-twist-server, multi-jackal-nav, roslaunch, multi-jackal-control, xacro }:
buildRosPackage {
  pname = "ros-kinetic-multi-jackal-base";
  version = "0.0.5";

  src = fetchurl {
    url = https://github.com/NicksSimulationsROS/multi_jackal-release/archive/release/kinetic/multi_jackal_base/0.0.5-0.tar.gz;
    sha256 = "4487f170fc0ea496d1dabce8dce264f730fa4d8b14cc876d6e19e4b08e69c501";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-ros controller-manager tf multi-jackal-description robot-localization urdf robot-state-publisher interactive-marker-twist-server multi-jackal-nav multi-jackal-control xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Jackal simulation base that combines all components.'';
    #license = lib.licenses.BSD;
  };
}

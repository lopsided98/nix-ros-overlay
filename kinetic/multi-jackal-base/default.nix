
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, controller-manager, urdf, robot-state-publisher, tf, multi-jackal-description, catkin, interactive-marker-twist-server, robot-localization, multi-jackal-nav, gazebo-ros, roslaunch, multi-jackal-control }:
buildRosPackage {
  pname = "ros-kinetic-multi-jackal-base";
  version = "0.0.5";

  src = fetchurl {
    url = "https://github.com/NicksSimulationsROS/multi_jackal-release/archive/release/kinetic/multi_jackal_base/0.0.5-0.tar.gz";
    name = "0.0.5-0.tar.gz";
    sha256 = "4487f170fc0ea496d1dabce8dce264f730fa4d8b14cc876d6e19e4b08e69c501";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ xacro controller-manager urdf robot-state-publisher tf multi-jackal-description interactive-marker-twist-server robot-localization multi-jackal-nav gazebo-ros multi-jackal-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Jackal simulation base that combines all components.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

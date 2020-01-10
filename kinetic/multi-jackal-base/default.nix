
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros, interactive-marker-twist-server, multi-jackal-control, multi-jackal-description, multi-jackal-nav, robot-localization, robot-state-publisher, roslaunch, tf, urdf, xacro }:
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
  propagatedBuildInputs = [ controller-manager gazebo-ros interactive-marker-twist-server multi-jackal-control multi-jackal-description multi-jackal-nav robot-localization robot-state-publisher tf urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Jackal simulation base that combines all components.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

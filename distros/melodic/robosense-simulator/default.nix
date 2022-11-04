
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robosense-description, robosense-gazebo-plugins }:
buildRosPackage {
  pname = "ros-melodic-robosense-simulator";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/tomlogan501/robosense_simulator_release/archive/release/melodic/robosense_simulator/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "c95c9480f493d51240fb78b6993fc5e36344da3768d3c13bf6ded4b438378b0e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ robosense-description robosense-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage allowing easy installation of Robosense simulation components.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

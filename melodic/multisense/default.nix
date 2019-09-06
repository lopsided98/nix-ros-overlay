
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, multisense-description, multisense-ros, catkin, multisense-cal-check, multisense-bringup, multisense-lib }:
buildRosPackage {
  pname = "ros-melodic-multisense";
  version = "4.0.2";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/melodic/multisense/4.0.2-0.tar.gz";
    name = "4.0.2-0.tar.gz";
    sha256 = "f35a0adbc07dc268fb0740de110b3c45e472843b6dbd90cbd98ae02a867b7f81";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ multisense-description multisense-ros multisense-cal-check multisense-bringup multisense-lib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense catkin driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

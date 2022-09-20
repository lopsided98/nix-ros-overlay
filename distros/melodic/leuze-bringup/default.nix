
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leuze-description, leuze-phidget-driver, leuze-rsl-driver, phidgets-ik, robot-state-publisher, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-leuze-bringup";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa-led/leuze_ros_drivers-release/archive/release/melodic/leuze_bringup/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "3ce11e52a670ce5b051f04f45d90d7eb9a1a05207a0c60733cb6d5ec8d8e2c29";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ leuze-description leuze-phidget-driver leuze-rsl-driver phidgets-ik robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains .'';
    license = with lib.licenses; [ asl20 ];
  };
}

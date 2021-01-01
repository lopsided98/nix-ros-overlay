
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leuze-description, leuze-phidget-driver, leuze-rsl-driver, phidgets-ik, robot-state-publisher, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-leuze-bringup";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa-led/leuze_ros_drivers-release/archive/release/kinetic/leuze_bringup/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "c009b3fe85c2743cc6e5558f22c4a5c5dd5fb1aeb1d2b2b43364ebf76b586a31";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ leuze-description leuze-phidget-driver leuze-rsl-driver phidgets-ik robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains .'';
    license = with lib.licenses; [ asl20 ];
  };
}

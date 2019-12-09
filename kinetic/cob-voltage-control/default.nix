
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-msgs, dynamic-reconfigure, std-msgs, catkin, pythonPackages, roscpp, cob-phidgets, rospy }:
buildRosPackage {
  pname = "ros-kinetic-cob-voltage-control";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_voltage_control/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "4639e392b3217eb3bf1f40954e28be2e077d3a0488ffdfcfb2d7f694caa8bd94";
  };

  buildType = "catkin";
  buildInputs = [ cob-msgs dynamic-reconfigure std-msgs roscpp cob-phidgets ];
  propagatedBuildInputs = [ cob-msgs dynamic-reconfigure std-msgs pythonPackages.tkinter roscpp cob-phidgets rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface to IO board that manages emergency stop and battery voltage on rob@work 3'';
    license = with lib.licenses; [ asl20 ];
  };
}

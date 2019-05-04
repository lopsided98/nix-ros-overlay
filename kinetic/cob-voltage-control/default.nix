
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, catkin, pythonPackages, cob-phidgets, rospy, std-msgs, cob-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-voltage-control";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_voltage_control/0.6.13-0.tar.gz;
    sha256 = "bf98e2628ac5664d820324c7c6c9e475659613c1f0d685a699a20ac57628f647";
  };

  buildInputs = [ cob-phidgets dynamic-reconfigure std-msgs cob-msgs roscpp ];
  propagatedBuildInputs = [ dynamic-reconfigure pythonPackages.tkinter cob-phidgets rospy std-msgs cob-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface to IO board that manages emergency stop and battery voltage on rob@work 3'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, catkin, pythonPackages, cob-phidgets, rospy, std-msgs, cob-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-voltage-control";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_voltage_control/0.6.14-1.tar.gz;
    sha256 = "e1da234eef576e3c4615a7d9a450ac2df5293191bcb2a616eb5120e96b425441";
  };

  buildInputs = [ cob-phidgets dynamic-reconfigure std-msgs cob-msgs roscpp ];
  propagatedBuildInputs = [ dynamic-reconfigure pythonPackages.tkinter cob-phidgets rospy std-msgs cob-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface to IO board that manages emergency stop and battery voltage on rob@work 3'';
    license = with lib.licenses; [ asl20 ];
  };
}

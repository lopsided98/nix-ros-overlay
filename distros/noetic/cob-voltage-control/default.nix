
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-phidgets, dynamic-reconfigure, python3Packages, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-voltage-control";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_voltage_control/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "bd21f7c884b3d25318f342bceaf6618fd61efc6b73e25827cb96c1593c0e9518";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs cob-phidgets dynamic-reconfigure python3Packages.matplotlib python3Packages.tkinter roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface to IO board that manages emergency stop and battery voltage on rob@work 3'';
    license = with lib.licenses; [ asl20 ];
  };
}

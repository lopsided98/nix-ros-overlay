
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-phidgets, dynamic-reconfigure, python3Packages, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-voltage-control";
  version = "0.7.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_voltage_control/0.7.14-1.tar.gz";
    name = "0.7.14-1.tar.gz";
    sha256 = "23444630337c05279f657b9295693b7f565d3887af09056b6ee60633b0607ac0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-msgs cob-phidgets dynamic-reconfigure python3Packages.matplotlib python3Packages.tkinter roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface to IO board that manages emergency stop and battery voltage on rob@work 3'';
    license = with lib.licenses; [ asl20 ];
  };
}

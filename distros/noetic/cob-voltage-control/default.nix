
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-phidgets, dynamic-reconfigure, python3Packages, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-voltage-control";
  version = "0.7.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_voltage_control/0.7.15-1.tar.gz";
    name = "0.7.15-1.tar.gz";
    sha256 = "9276a0be4b9b945d18ea655ce95d542775f4f1d4721f0dda7cb6acac8d70a033";
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

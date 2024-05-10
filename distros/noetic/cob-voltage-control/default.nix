
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-phidgets, dynamic-reconfigure, python3Packages, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-voltage-control";
  version = "0.7.17-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/cob_voltage_control/0.7.17-2.tar.gz";
    name = "0.7.17-2.tar.gz";
    sha256 = "62918123d1710b1c76a6bebfd82c1854ce8b6cc1c3ff57c0c7a57d1bde4f34ab";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-msgs cob-phidgets dynamic-reconfigure python3Packages.matplotlib python3Packages.tkinter roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Interface to IO board that manages emergency stop and battery voltage on rob@work 3";
    license = with lib.licenses; [ asl20 ];
  };
}

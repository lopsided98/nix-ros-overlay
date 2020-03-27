
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-phidgets, dynamic-reconfigure, pythonPackages, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-voltage-control";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_voltage_control/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "15322cca4000af54771be3c8e5ca7afff75be779631897fae60fb008baeab5e8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs cob-phidgets dynamic-reconfigure pythonPackages.matplotlib pythonPackages.tkinter roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface to IO board that manages emergency stop and battery voltage on rob@work 3'';
    license = with lib.licenses; [ asl20 ];
  };
}

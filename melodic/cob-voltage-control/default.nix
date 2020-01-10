
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-phidgets, dynamic-reconfigure, pythonPackages, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-voltage-control";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_voltage_control/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "df3b7cc5459014b546c6a72fe6d974265f8561f86cb54cf2f68aed24b8f6196e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs cob-phidgets dynamic-reconfigure pythonPackages.tkinter roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface to IO board that manages emergency stop and battery voltage on rob@work 3'';
    license = with lib.licenses; [ asl20 ];
  };
}

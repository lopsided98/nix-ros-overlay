
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-phidgets, dynamic-reconfigure, pythonPackages, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-voltage-control";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_voltage_control/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "a3614687544a37eda6433f6b38c1afb75c509c85bd751391323b70f1ef61e326";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-msgs cob-phidgets dynamic-reconfigure pythonPackages.matplotlib pythonPackages.tkinter roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface to IO board that manages emergency stop and battery voltage on rob@work 3'';
    license = with lib.licenses; [ asl20 ];
  };
}

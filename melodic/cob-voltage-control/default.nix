
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, catkin, pythonPackages, cob-phidgets, rospy, std-msgs, cob-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-cob-voltage-control";
  version = "0.7.0-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_voltage_control/0.7.0-1.tar.gz;
    sha256 = "7282f78802aa571e8ff6c0ca3b7b0baf8ac62709173adab5c9f5039a92882279";
  };

  buildInputs = [ cob-phidgets dynamic-reconfigure std-msgs cob-msgs roscpp ];
  propagatedBuildInputs = [ dynamic-reconfigure pythonPackages.tkinter cob-phidgets rospy std-msgs cob-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface to IO board that manages emergency stop and battery voltage on rob@work 3'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-phidgets, rospy }:
buildRosPackage {
  pname = "ros-noetic-cob-phidget-power-state";
  version = "0.7.17-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/cob_phidget_power_state/0.7.17-2.tar.gz";
    name = "0.7.17-2.tar.gz";
    sha256 = "14b1a8b62cc620ec7ede037df9598e45dc4d97850b474e45dfe82c197fb43459";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-msgs cob-phidgets rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The cob_phidget_power_state package publishes power state based on phidgets signals.";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-phidgets, rospy }:
buildRosPackage {
  pname = "ros-noetic-cob-phidget-power-state";
  version = "0.7.16-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/cob_phidget_power_state/0.7.16-2.tar.gz";
    name = "0.7.16-2.tar.gz";
    sha256 = "2a7796b920f5a74d71b5572a0cd817e1a665628f28149888420cb1ce4362430b";
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


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-phidgets, rospy }:
buildRosPackage {
  pname = "ros-noetic-cob-phidget-em-state";
  version = "0.7.17-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/cob_phidget_em_state/0.7.17-2.tar.gz";
    name = "0.7.17-2.tar.gz";
    sha256 = "13e47ceacbec2128fd8d61af62d361c17442284de3ef9323941565b87ce0177c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-msgs cob-phidgets rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The cob_phidget_em_state package publishes emergency state based on phidgets signals.";
    license = with lib.licenses; [ asl20 ];
  };
}

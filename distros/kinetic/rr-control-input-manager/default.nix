
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rr-control-input-manager";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/kinetic/rr_control_input_manager/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "5e046b6a18847e64a548dae54ea8aca94cbd72159ed04790f291465d4f4f3c0a";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filter velocity commands by ensuring that message time stamps do not exceed given timeout thresholds.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

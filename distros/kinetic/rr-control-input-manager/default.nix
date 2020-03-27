
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rr-control-input-manager";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/kinetic/rr_control_input_manager/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "c11d051886f20e1c46964a08cfbe9a32ff060e8d842f207a995e02b2f561350f";
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

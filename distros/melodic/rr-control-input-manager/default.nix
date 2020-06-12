
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rr-control-input-manager";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/melodic/rr_control_input_manager/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "13312611f0a08c552c84b8526764cb270c162ad63e94506f205b3bc99960d03e";
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

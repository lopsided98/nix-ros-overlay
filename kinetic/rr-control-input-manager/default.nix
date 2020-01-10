
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rr-control-input-manager";
  version = "0.7.3-r2";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/kinetic/rr_control_input_manager/0.7.3-2.tar.gz";
    name = "0.7.3-2.tar.gz";
    sha256 = "e7a1593e799125997c0d35e0755d842fc72fca548e18bd3dc3f1eb26544bbb18";
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

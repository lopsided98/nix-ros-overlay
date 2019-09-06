
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rr-control-input-manager";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/kinetic/rr_control_input_manager/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "18695e37e3a86ddbb3db74ab3722b9bc25ba8b8b28aba05d92e0b8785d466281";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs roscpp rospy ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ std-msgs roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filter velocity commands by ensuring that message time stamps do not exceed given timeout thresholds.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

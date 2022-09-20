
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, pluginlib, rosbash, roscpp, rosnode, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-controller-manager-tests";
  version = "0.18.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/controller_manager_tests/0.18.4-1.tar.gz";
    name = "0.18.4-1.tar.gz";
    sha256 = "374371fe02df6f27e7e10309953988c02a2fa8470bb7e06f53abc6265717ba30";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosbash rosnode rostest ];
  propagatedBuildInputs = [ controller-interface controller-manager controller-manager-msgs hardware-interface pluginlib roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tests for the controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

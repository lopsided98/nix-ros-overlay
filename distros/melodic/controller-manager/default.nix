
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager-msgs, hardware-interface, pluginlib, roscpp, rosparam, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-controller-manager";
  version = "0.18.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/controller_manager/0.18.2-1.tar.gz";
    name = "0.18.2-1.tar.gz";
    sha256 = "fc490eea5d36cbb5f19378d006385b64232c8b1bfc105e47784f354f31a5f241";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-interface controller-manager-msgs hardware-interface pluginlib roscpp rosparam rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

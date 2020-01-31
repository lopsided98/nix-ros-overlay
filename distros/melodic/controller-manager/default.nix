
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, controller-interface, controller-manager-msgs, hardware-interface, pluginlib, roscpp, rosparam, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-controller-manager";
  version = "0.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/controller_manager/0.16.0-1.tar.gz";
    name = "0.16.0-1.tar.gz";
    sha256 = "c143861db6d4ddee5b6a25d8ea10f733ec2bdde66ad20adf91b16881100dd90c";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost controller-interface controller-manager-msgs hardware-interface pluginlib roscpp rosparam rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

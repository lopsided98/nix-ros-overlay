
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager-msgs, hardware-interface, pluginlib, roscpp, rosparam, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-controller-manager";
  version = "0.18.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/controller_manager/0.18.4-1.tar.gz";
    name = "0.18.4-1.tar.gz";
    sha256 = "9fb65b2d3430380e5cc1a7cae9b328af060cbfa5ec8d7ffc75128e3ec5b41bb6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-interface controller-manager-msgs hardware-interface pluginlib roscpp rosparam rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

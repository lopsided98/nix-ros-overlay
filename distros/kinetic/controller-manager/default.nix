
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager-msgs, hardware-interface, pluginlib, rostest }:
buildRosPackage {
  pname = "ros-kinetic-controller-manager";
  version = "0.13.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/controller_manager/0.13.5-1.tar.gz";
    name = "0.13.5-1.tar.gz";
    sha256 = "50fe6cfc05ab3de17340660ead08a660343e33e75fef8433e1d0acd387af1df9";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-interface controller-manager-msgs hardware-interface pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

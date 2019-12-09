
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-interface, controller-manager-msgs, pluginlib, hardware-interface, catkin, rostest }:
buildRosPackage {
  pname = "ros-kinetic-controller-manager";
  version = "0.13.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/controller_manager/0.13.3-0.tar.gz";
    name = "0.13.3-0.tar.gz";
    sha256 = "03176b3abcec6e00f0e13e6e8b62b2b2291f3f5773510249958bb0f0ca4778ac";
  };

  buildType = "catkin";
  buildInputs = [ controller-manager-msgs pluginlib controller-interface hardware-interface ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-manager-msgs pluginlib controller-interface hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

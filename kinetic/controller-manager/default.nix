
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager-msgs, hardware-interface, pluginlib, rostest }:
buildRosPackage {
  pname = "ros-kinetic-controller-manager";
  version = "0.13.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/controller_manager/0.13.4-1.tar.gz";
    name = "0.13.4-1.tar.gz";
    sha256 = "e2e4d37d8f4b682b825caca7fe740e8991e9a7d1db3d2103235ab04f19946d75";
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

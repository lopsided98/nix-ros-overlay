
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, forward-command-controller, pluginlib }:
buildRosPackage {
  pname = "ros-melodic-position-controllers";
  version = "0.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/position_controllers/0.17.3-1.tar.gz";
    name = "0.17.3-1.tar.gz";
    sha256 = "f3b9db8f9a79b2f4b25ccc2a7ec72f50fa99866e528396678db11e9a1a10e357";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface forward-command-controller pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''position_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

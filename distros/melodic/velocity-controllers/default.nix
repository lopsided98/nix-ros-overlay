
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-interface, forward-command-controller, pluginlib, realtime-tools, urdf }:
buildRosPackage {
  pname = "ros-melodic-velocity-controllers";
  version = "0.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/velocity_controllers/0.17.2-1.tar.gz";
    name = "0.17.2-1.tar.gz";
    sha256 = "08a54e78a180a7e56154d1860450a7c3c3f36158944b60cd584cfed0baf463f7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ angles control-msgs control-toolbox controller-interface forward-command-controller pluginlib realtime-tools urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''velocity_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-interface, forward-command-controller, pluginlib, realtime-tools, urdf }:
buildRosPackage {
  pname = "ros-melodic-velocity-controllers";
  version = "0.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/velocity_controllers/0.17.0-1.tar.gz";
    name = "0.17.0-1.tar.gz";
    sha256 = "09065027f992457b2961e20e4f9fb5df0bad52a34f3cd964c74cf6ae8e23b67d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles control-msgs control-toolbox controller-interface forward-command-controller pluginlib realtime-tools urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''velocity_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

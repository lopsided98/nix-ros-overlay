
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-interface, forward-command-controller, pluginlib, realtime-tools, urdf }:
buildRosPackage {
  pname = "ros-melodic-velocity-controllers";
  version = "0.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/velocity_controllers/0.17.3-1.tar.gz";
    name = "0.17.3-1.tar.gz";
    sha256 = "279f930a09daff1581d120a5535709cc117f25ccfa0805b3e58da2a3463a00bf";
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


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, realtime-tools, control-toolbox, catkin, controller-interface, urdf, angles, forward-command-controller }:
buildRosPackage {
  pname = "ros-kinetic-velocity-controllers";
  version = "0.13.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/velocity_controllers/0.13.5-0.tar.gz;
    sha256 = "b31a0c50e6842d6121644581506f5455a8c25f45fcd173fcbca8f702f54a5952";
  };

  propagatedBuildInputs = [ realtime-tools urdf controller-interface control-msgs angles control-toolbox forward-command-controller ];
  nativeBuildInputs = [ realtime-tools urdf controller-interface control-msgs angles control-toolbox catkin forward-command-controller ];

  meta = {
    description = ''velocity_controllers'';
    #license = lib.licenses.BSD;
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, control-toolbox, realtime-tools, catkin, controller-interface, urdf, angles, forward-command-controller }:
buildRosPackage {
  pname = "ros-kinetic-velocity-controllers";
  version = "0.13.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/velocity_controllers/0.13.5-0.tar.gz;
    sha256 = "b31a0c50e6842d6121644581506f5455a8c25f45fcd173fcbca8f702f54a5952";
  };

  buildInputs = [ control-msgs control-toolbox realtime-tools controller-interface urdf angles forward-command-controller ];
  propagatedBuildInputs = [ control-msgs control-toolbox realtime-tools controller-interface urdf angles forward-command-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''velocity_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

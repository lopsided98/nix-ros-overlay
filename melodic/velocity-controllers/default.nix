
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-interface, urdf, control-toolbox, catkin, realtime-tools, angles, forward-command-controller, control-msgs }:
buildRosPackage {
  pname = "ros-melodic-velocity-controllers";
  version = "0.15.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/velocity_controllers/0.15.0-0.tar.gz";
    name = "0.15.0-0.tar.gz";
    sha256 = "7a2b419156bb96923bd97e0ffe3ffda525f2fdc4027868c461590c749c379cbb";
  };

  buildType = "catkin";
  buildInputs = [ controller-interface urdf control-toolbox realtime-tools angles forward-command-controller control-msgs ];
  propagatedBuildInputs = [ controller-interface urdf control-toolbox realtime-tools angles forward-command-controller control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''velocity_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, control-toolbox, realtime-tools, catkin, controller-interface, urdf, angles, forward-command-controller }:
buildRosPackage {
  pname = "ros-melodic-velocity-controllers";
  version = "0.15.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/velocity_controllers/0.15.0-0.tar.gz;
    sha256 = "7a2b419156bb96923bd97e0ffe3ffda525f2fdc4027868c461590c749c379cbb";
  };

  buildInputs = [ realtime-tools urdf controller-interface control-msgs angles control-toolbox forward-command-controller ];
  propagatedBuildInputs = [ realtime-tools urdf controller-interface control-msgs angles control-toolbox forward-command-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''velocity_controllers'';
    #license = lib.licenses.BSD;
  };
}

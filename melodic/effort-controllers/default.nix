
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, realtime-tools, control-toolbox, catkin, controller-interface, urdf, angles, forward-command-controller }:
buildRosPackage {
  pname = "ros-melodic-effort-controllers";
  version = "0.14.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/effort_controllers/0.14.3-0.tar.gz;
    sha256 = "184d697921121f935c6512ff5b6e2044dcb5d344d90da2e716fcfa6baa0e0c77";
  };

  propagatedBuildInputs = [ realtime-tools urdf controller-interface control-msgs angles control-toolbox forward-command-controller ];
  nativeBuildInputs = [ realtime-tools urdf controller-interface control-msgs angles control-toolbox catkin forward-command-controller ];

  meta = {
    description = ''effort_controllers'';
    #license = lib.licenses.BSD;
  };
}

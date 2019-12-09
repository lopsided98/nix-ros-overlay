
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-interface, urdf, control-toolbox, catkin, realtime-tools, angles, forward-command-controller, control-msgs }:
buildRosPackage {
  pname = "ros-kinetic-effort-controllers";
  version = "0.13.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/effort_controllers/0.13.5-0.tar.gz";
    name = "0.13.5-0.tar.gz";
    sha256 = "d113b5a066e0db7b84bdfe30a11c7bdb826d1243b2a3329094c4225406c5fd7b";
  };

  buildType = "catkin";
  buildInputs = [ controller-interface urdf control-toolbox realtime-tools angles forward-command-controller control-msgs ];
  propagatedBuildInputs = [ controller-interface urdf control-toolbox realtime-tools angles forward-command-controller control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''effort_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

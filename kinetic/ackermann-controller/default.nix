
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-interface, nav-msgs, urdf, control-toolbox, hardware-interface, tf, catkin, realtime-tools, roscpp, angles, forward-command-controller, control-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ackermann-controller";
  version = "0.1.2";

  src = fetchurl {
    url = "https://github.com/easymov/ackermann_controller-release/archive/release/kinetic/ackermann_controller/0.1.2-0.tar.gz";
    name = "0.1.2-0.tar.gz";
    sha256 = "40b0ec4a814e6dc4a893490338a19c4940d72b422d9ba07e362b0517b81021b0";
  };

  buildType = "catkin";
  buildInputs = [ controller-interface nav-msgs urdf control-toolbox hardware-interface tf realtime-tools roscpp angles forward-command-controller control-msgs ];
  propagatedBuildInputs = [ controller-interface nav-msgs urdf control-toolbox hardware-interface tf realtime-tools roscpp angles forward-command-controller control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ackermann_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

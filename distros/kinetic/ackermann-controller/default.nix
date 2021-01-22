
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-interface, forward-command-controller, hardware-interface, nav-msgs, realtime-tools, roscpp, tf, urdf }:
buildRosPackage {
  pname = "ros-kinetic-ackermann-controller";
  version = "0.1.2";

  src = fetchurl {
    url = "https://github.com/easymov/ackermann_controller-release/archive/release/kinetic/ackermann_controller/0.1.2-0.tar.gz";
    name = "0.1.2-0.tar.gz";
    sha256 = "40b0ec4a814e6dc4a893490338a19c4940d72b422d9ba07e362b0517b81021b0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles control-msgs control-toolbox controller-interface forward-command-controller hardware-interface nav-msgs realtime-tools roscpp tf urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ackermann_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

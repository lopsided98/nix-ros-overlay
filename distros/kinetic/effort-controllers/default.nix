
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-interface, forward-command-controller, realtime-tools, urdf }:
buildRosPackage {
  pname = "ros-kinetic-effort-controllers";
  version = "0.13.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/effort_controllers/0.13.6-1.tar.gz";
    name = "0.13.6-1.tar.gz";
    sha256 = "4c89d8dcc2f9fb685023aa50e6a8d2148c7bd3a4fda12703753e5a05dd49afbf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles control-msgs control-toolbox controller-interface forward-command-controller realtime-tools urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''effort_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

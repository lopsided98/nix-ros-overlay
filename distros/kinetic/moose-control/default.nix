
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, interactive-marker-twist-server, joint-state-controller, joy, nav-msgs, realtime-tools, robot-localization, roslaunch, teleop-twist-joy, tf, topic-tools, twist-mux, urdf }:
buildRosPackage {
  pname = "ros-kinetic-moose-control";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/moose-release/archive/release/kinetic/moose_control/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "f6210417ae71de6184cccf52ac51b5e728b9ca3566090df1053b9b5dd5ef0420";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-interface controller-manager interactive-marker-twist-server joint-state-controller joy nav-msgs realtime-tools robot-localization teleop-twist-joy tf topic-tools twist-mux urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers for Moose'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

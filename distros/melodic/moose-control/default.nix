
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, interactive-marker-twist-server, joint-state-controller, joy, nav-msgs, realtime-tools, robot-localization, roslaunch, teleop-twist-joy, tf, topic-tools, twist-mux, urdf }:
buildRosPackage {
  pname = "ros-melodic-moose-control";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/moose-release/archive/release/melodic/moose_control/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "f50a333e218c43523c15fe346cffeba3d2eda02b3dec0798f1d084a61d59308b";
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

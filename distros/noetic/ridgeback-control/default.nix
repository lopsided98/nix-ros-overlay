
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, interactive-marker-twist-server, joint-state-controller, joy, nav-msgs, realtime-tools, robot-localization, roslaunch, teleop-twist-joy, tf, topic-tools, twist-mux, urdf }:
buildRosPackage {
  pname = "ros-noetic-ridgeback-control";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback-release/archive/release/noetic/ridgeback_control/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "7ce9d191fa92dbe0a797e80a0fd9d3ccaf372875938e2b4bb5ac6add40c426a0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-interface controller-manager interactive-marker-twist-server joint-state-controller joy nav-msgs realtime-tools robot-localization teleop-twist-joy tf topic-tools twist-mux urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers for Ridgeback'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

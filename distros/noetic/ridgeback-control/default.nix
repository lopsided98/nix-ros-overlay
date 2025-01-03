
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, interactive-marker-twist-server, joint-state-controller, joy, nav-msgs, realtime-tools, robot-localization, roslaunch, teleop-twist-joy, tf, topic-tools, twist-mux, urdf }:
buildRosPackage {
  pname = "ros-noetic-ridgeback-control";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback-release/archive/release/noetic/ridgeback_control/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "e550777562f98d7cc0f9ff502e06546472c1dd6dd692a86a9581afbbabb776a9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-interface controller-manager interactive-marker-twist-server joint-state-controller joy nav-msgs realtime-tools robot-localization teleop-twist-joy tf topic-tools twist-mux urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Controllers for Ridgeback";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

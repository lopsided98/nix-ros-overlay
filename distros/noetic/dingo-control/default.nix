
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, interactive-marker-twist-server, joint-state-controller, joy, ridgeback-control, robot-localization, roslaunch, teleop-twist-joy, topic-tools, twist-mux }:
buildRosPackage {
  pname = "ros-noetic-dingo-control";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo-release/archive/release/noetic/dingo_control/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "10f14345b123c015cb1c7eb6807d91d2bbd3295ae219667d5c67c2cb5a9d3819";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller interactive-marker-twist-server joint-state-controller joy ridgeback-control robot-localization teleop-twist-joy topic-tools twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers for Dingo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

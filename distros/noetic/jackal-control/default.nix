
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, interactive-marker-twist-server, joint-state-controller, joy, robot-localization, roslaunch, teleop-twist-joy, topic-tools, twist-mux }:
buildRosPackage {
  pname = "ros-noetic-jackal-control";
  version = "0.8.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/noetic/jackal_control/0.8.7-1.tar.gz";
    name = "0.8.7-1.tar.gz";
    sha256 = "84b0564851efad46a94e7fe20f1cbc5665f41fe3869037a1e2be09eb7e8f2ea8";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller interactive-marker-twist-server joint-state-controller joy robot-localization teleop-twist-joy topic-tools twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers for Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

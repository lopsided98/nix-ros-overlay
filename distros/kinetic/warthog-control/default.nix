
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, interactive-marker-twist-server, joint-state-controller, joy, robot-localization, roslaunch, teleop-twist-joy, topic-tools, twist-mux }:
buildRosPackage {
  pname = "ros-kinetic-warthog-control";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog-release/archive/release/kinetic/warthog_control/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "93c5f5a311b0f63dcfc45487599c8a29bab2a6f69137f3c6345f4d22b417b8e3";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller interactive-marker-twist-server joint-state-controller joy robot-localization teleop-twist-joy topic-tools twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers for Warthog'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

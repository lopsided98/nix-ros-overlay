
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, interactive-marker-twist-server, joint-state-controller, joy, robot-localization, roslaunch, rosserial-server, teleop-twist-joy, topic-tools, twist-mux }:
buildRosPackage {
  pname = "ros-kinetic-warthog-control";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog-release/archive/release/kinetic/warthog_control/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "e1e879c9cb9c0beedd213b24562bcd9b92ef6efc4ea1d913e57d01934ef1d5e8";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller interactive-marker-twist-server joint-state-controller joy robot-localization rosserial-server teleop-twist-joy topic-tools twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers for Warthog'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

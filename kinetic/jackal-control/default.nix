
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy, teleop-twist-joy, controller-manager, twist-mux, catkin, interactive-marker-twist-server, robot-localization, diff-drive-controller, topic-tools, roslaunch, joint-state-controller }:
buildRosPackage {
  pname = "ros-kinetic-jackal-control";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/kinetic/jackal_control/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "f300d2f001da3ecde426697f54571d830e51c3f06b68dfe1d7865eebca5f7355";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ joy teleop-twist-joy controller-manager twist-mux interactive-marker-twist-server robot-localization diff-drive-controller topic-tools joint-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers for Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

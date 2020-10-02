
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, interactive-marker-twist-server, joint-state-controller, joy, ridgeback-control, robot-localization, roslaunch, teleop-twist-joy, topic-tools, twist-mux }:
buildRosPackage {
  pname = "ros-melodic-dingo-control";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo-release/archive/release/melodic/dingo_control/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "cce63de3184c10892d63e6ef3ba42638398fd9fdeb108ed78e26b360f2e36977";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller interactive-marker-twist-server joint-state-controller joy ridgeback-control robot-localization teleop-twist-joy topic-tools twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers for Dingo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

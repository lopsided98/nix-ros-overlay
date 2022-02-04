
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, interactive-marker-twist-server, joint-state-controller, joy, ridgeback-control, robot-localization, roslaunch, teleop-twist-joy, topic-tools, twist-mux }:
buildRosPackage {
  pname = "ros-melodic-dingo-control";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo-release/archive/release/melodic/dingo_control/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "671675984156c172450732e1cf53dd4c477b2e7df3280ef2b9c7e682f4c95eb6";
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

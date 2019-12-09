
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy, teleop-twist-joy, controller-manager, twist-mux, catkin, rosserial-server, interactive-marker-twist-server, robot-localization, diff-drive-controller, topic-tools, roslaunch, joint-state-controller }:
buildRosPackage {
  pname = "ros-melodic-warthog-control";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog-release/archive/release/melodic/warthog_control/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "e370cf7695d20f5c2d9c20146c481c11536d54d69cfe4147aadbe0e75243e314";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ joy teleop-twist-joy controller-manager twist-mux rosserial-server interactive-marker-twist-server robot-localization diff-drive-controller topic-tools joint-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers for Warthog'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

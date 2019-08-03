
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, twist-mux, joint-state-controller, rosserial-server, diff-drive-controller, joy, catkin, robot-localization, teleop-twist-joy, interactive-marker-twist-server, topic-tools, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-warthog-control";
  version = "0.1.1-r2";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/warthog-release/archive/release/melodic/warthog_control/0.1.1-2.tar.gz;
    sha256 = "e370cf7695d20f5c2d9c20146c481c11536d54d69cfe4147aadbe0e75243e314";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager twist-mux joint-state-controller rosserial-server diff-drive-controller joy robot-localization teleop-twist-joy interactive-marker-twist-server topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers for Warthog'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

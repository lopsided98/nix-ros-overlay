
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, twist-mux, joint-state-controller, diff-drive-controller, rosserial-server, joy, catkin, robot-localization, teleop-twist-joy, interactive-marker-twist-server, topic-tools, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-warthog-control";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/warthog-release/archive/release/kinetic/warthog_control/0.1.0-0.tar.gz;
    sha256 = "7d05d99045d03d73c4f44e70bc958ffd6d39c89988886f39a537c3b9bac5856d";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager twist-mux joint-state-controller diff-drive-controller rosserial-server joy robot-localization teleop-twist-joy interactive-marker-twist-server topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers for Warthog'';
    #license = lib.licenses.BSD;
  };
}

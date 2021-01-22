
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-common-action-msgs";
  version = "0.0.10";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/kinetic/pr2_common_action_msgs/0.0.10-0.tar.gz";
    name = "0.0.10-0.tar.gz";
    sha256 = "224479db830855ee366fdfd783c6757fe911ef2ce33d99cbae711afd7ae7bad6";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_common_action_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

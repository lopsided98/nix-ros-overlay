
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-cob-actions";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/noetic/cob_actions/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "3b6e6a6d4a3ba976bcde2c76c69f24fcd752961e88550d912d0cdad0445abe06";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This Package contains Care-O-bot specific action definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}

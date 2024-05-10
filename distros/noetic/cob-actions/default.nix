
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-cob-actions";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_common-release/archive/release/noetic/cob_actions/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "612a74daf424919b4b542fc345f7aedade39b6c8fc736f0c2ed06cca99a5727d";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This Package contains Care-O-bot specific action definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}

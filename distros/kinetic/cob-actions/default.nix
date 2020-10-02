
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-cob-actions";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/kinetic/cob_actions/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "52350a5b00706f937db15beeb657dd48e84a8dc2957171f79582e209a52a8ddd";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This Package contains Care-O-bot specific action definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}

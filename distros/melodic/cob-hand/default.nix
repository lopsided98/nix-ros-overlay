
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-hand-bridge }:
buildRosPackage {
  pname = "ros-melodic-cob-hand";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_hand-release/archive/release/melodic/cob_hand/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "2a8a2a1e8f89cdc66ba4d91edd7384208ec45f145fbc4d3ddc71f4e25b900cef";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-hand-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_hand stack includes packages that provide access to the Care-O-bot hand through ROS serial.'';
    license = with lib.licenses; [ asl20 ];
  };
}

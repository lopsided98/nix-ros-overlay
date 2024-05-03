
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-relayboard";
  version = "0.7.17-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/cob_relayboard/0.7.17-2.tar.gz";
    name = "0.7.17-2.tar.gz";
    sha256 = "9a273bd5cc1a8a23db6e6a9c8747b641efcc55f326ca3f2748f1513fca76486e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-msgs roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "cob_relayboard";
    license = with lib.licenses; [ asl20 ];
  };
}

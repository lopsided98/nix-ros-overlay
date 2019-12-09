
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, boost, geometry-msgs, std-msgs, tf, catkin, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-cob-footprint-observer";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_footprint_observer/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "46ef011a1b951ba43249b35c4e30e1a612549411f0a8bed05ad7eba7bf94136b";
  };

  buildType = "catkin";
  buildInputs = [ boost geometry-msgs std-msgs tf roscpp message-generation ];
  propagatedBuildInputs = [ boost geometry-msgs std-msgs tf roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_footprint_observer package adjusts the footprint of the robot based on the setup (e.g. arm and/or tray).'';
    license = with lib.licenses; [ asl20 ];
  };
}

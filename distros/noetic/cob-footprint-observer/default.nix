
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, geometry-msgs, message-generation, message-runtime, roscpp, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-footprint-observer";
  version = "0.8.19-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_footprint_observer/0.8.19-1.tar.gz";
    name = "0.8.19-1.tar.gz";
    sha256 = "77d382df110e8618f5b725f269c772fb3c3d2529adf9beaeb6faf6ac97f5966a";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ boost geometry-msgs message-runtime roscpp std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_footprint_observer package adjusts the footprint of the robot based on the setup (e.g. arm and/or tray).'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, geometry-msgs, message-generation, message-runtime, roscpp, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-footprint-observer";
  version = "0.8.21-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_footprint_observer/0.8.21-1.tar.gz";
    name = "0.8.21-1.tar.gz";
    sha256 = "f7b128716f6b7c63a19fcc3fd08e8c957b8870fab70e97c21be13b8e3a55d564";
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

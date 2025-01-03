
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, geometry-msgs, message-generation, message-runtime, roscpp, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-footprint-observer";
  version = "0.8.24-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_control-release/archive/release/noetic/cob_footprint_observer/0.8.24-2.tar.gz";
    name = "0.8.24-2.tar.gz";
    sha256 = "73171a950eadb0392b0bd43f2ea5337a56e9d94e241f6e937887e98bedb50271";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ boost geometry-msgs message-runtime roscpp std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The cob_footprint_observer package adjusts the footprint of the robot based on the setup (e.g. arm and/or tray).";
    license = with lib.licenses; [ asl20 ];
  };
}

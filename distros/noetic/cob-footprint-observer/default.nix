
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, geometry-msgs, message-generation, message-runtime, roscpp, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-footprint-observer";
  version = "0.8.23-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_control-release/archive/release/noetic/cob_footprint_observer/0.8.23-1.tar.gz";
    name = "0.8.23-1.tar.gz";
    sha256 = "e811f191f1a2414b53f1b4f39d48097d5b407d2050feab67d32ef5472e3cd2ab";
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


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-diffbot-mbf";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-mobile-robots-release/diffbot-release/archive/release/noetic/diffbot_mbf/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "40146515e32b5c6cab410888f442f88300f554b5f8e0156f4e6d08d53cfaf620";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The diffbot_mbf package'';
    license = with lib.licenses; [ gpl3Only ];
  };
}

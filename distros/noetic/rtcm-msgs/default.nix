
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rtcm-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/rtcm_msgs-release/archive/release/noetic/rtcm_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "4dfe9abf7aae2ae5ea92717aeaeeacb3dac07d2d67518b0d63eb2eb2e8f5878a";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rtcm_msgs package contains messages related to data in the RTCM format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

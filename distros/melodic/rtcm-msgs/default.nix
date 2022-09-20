
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rtcm-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/rtcm_msgs-release/archive/release/melodic/rtcm_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "7ca84d7bd226e0121ad7d2952c793ba4ac818538e5b377bb35cf6febc9a8f64a";
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

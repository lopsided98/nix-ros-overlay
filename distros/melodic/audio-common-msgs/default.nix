
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-audio-common-msgs";
  version = "0.3.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/melodic/audio_common_msgs/0.3.9-1.tar.gz";
    name = "0.3.9-1.tar.gz";
    sha256 = "7ab15c6aed69d2a3ebf5cf7bc986b844b00e4db8c13601343737b7b758f9cdfd";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for transmitting audio via ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

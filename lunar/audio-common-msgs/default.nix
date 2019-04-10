
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-audio-common-msgs";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/audio_common-release/archive/release/lunar/audio_common_msgs/0.3.3-0.tar.gz;
    sha256 = "57723003b9f70ec2b6c962b2e5d252377309b3cd045efc2832d9edd4ccd8c86f";
  };

  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for transmitting audio via ROS'';
    #license = lib.licenses.BSD;
  };
}

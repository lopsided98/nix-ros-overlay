
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-runtime, std-msgs, catkin, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-raspigibbon-msgs";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/raspberrypigibbon/raspigibbon_ros-release/archive/release/kinetic/raspigibbon_msgs/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "92f61325af35a9e01436e28c78ee37a0b2b242ce7b4798db001f7c4ed89a4c91";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs sensor-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs sensor-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The raspigibbon_msgs package'';
    license = with lib.licenses; [ mit ];
  };
}

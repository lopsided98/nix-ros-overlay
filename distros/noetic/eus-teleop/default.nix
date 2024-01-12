
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, jsk-interactive-marker, jsk-topic-tools, libuvc-camera, message-generation, message-runtime, pr2eus, roseus, sensor-msgs, std-msgs, topic-tools, video-stream-opencv }:
buildRosPackage {
  pname = "ros-noetic-eus-teleop";
  version = "0.1.17-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/eus_teleop/0.1.17-2.tar.gz";
    name = "0.1.17-2.tar.gz";
    sha256 = "2ee1653b82439e58b33bca0a36e856e00fec0a4176b94854c0816d2e50400def";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs jsk-interactive-marker jsk-topic-tools libuvc-camera message-runtime pr2eus roseus sensor-msgs std-msgs topic-tools video-stream-opencv ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The eus_teleop package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

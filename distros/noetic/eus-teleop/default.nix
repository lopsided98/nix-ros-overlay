
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, jsk-interactive-marker, jsk-topic-tools, libuvc-camera, message-generation, message-runtime, pr2eus, roseus, sensor-msgs, std-msgs, topic-tools, video-stream-opencv }:
buildRosPackage {
  pname = "ros-noetic-eus-teleop";
  version = "0.1.18-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/eus_teleop/0.1.18-1.tar.gz";
    name = "0.1.18-1.tar.gz";
    sha256 = "2d19b2def4334d8aad3f4a6bc94a601fe64f728d647ed526dd1279f815b92552";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs jsk-interactive-marker jsk-topic-tools libuvc-camera message-runtime pr2eus roseus sensor-msgs std-msgs topic-tools video-stream-opencv ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The eus_teleop package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

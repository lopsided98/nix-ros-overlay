
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-cob-object-detection-msgs";
  version = "0.6.20-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/noetic/cob_object_detection_msgs/0.6.20-1.tar.gz";
    name = "0.6.20-1.tar.gz";
    sha256 = "a1fe3f5a6217f42c99af3ce5bcdb93f5b6fd19823cf2454c5b54fef7b9a682f6";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package contains message type definitions for object detection";
    license = with lib.licenses; [ asl20 ];
  };
}

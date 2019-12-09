
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, geometry-msgs, std-msgs, std-srvs, catkin, actionlib-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-cob-object-detection-msgs";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_object_detection_msgs/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "a68fa72355a45bd46e7dc389bed0c0f59e01c4e4fa1281536649d4498842269a";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs std-srvs actionlib-msgs message-generation ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs std-srvs actionlib-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains message type definitions for object detection'';
    license = with lib.licenses; [ asl20 ];
  };
}

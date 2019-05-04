
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, actionlib-msgs, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-object-detection-msgs";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_object_detection_msgs/0.6.13-0.tar.gz;
    sha256 = "6af0beeee2a538ba2947af729eb7987a579abaf7e494474b2a4556a6589e3bde";
  };

  buildInputs = [ std-srvs actionlib-msgs sensor-msgs message-generation std-msgs geometry-msgs ];
  propagatedBuildInputs = [ std-srvs actionlib-msgs sensor-msgs message-runtime std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains message type definitions for object detection'';
    license = with lib.licenses; [ asl20 ];
  };
}

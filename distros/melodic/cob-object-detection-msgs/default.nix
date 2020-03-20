
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-cob-object-detection-msgs";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/melodic/cob_object_detection_msgs/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "494602233338235f774e6abe434af7cc09ec32ed57eab11d6cb7e1bf2406c3ea";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains message type definitions for object detection'';
    license = with lib.licenses; [ asl20 ];
  };
}

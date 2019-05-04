
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, cob-object-detection-msgs, sensor-msgs, catkin, message-generation, message-runtime, actionlib, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-3d-mapping-msgs";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_3d_mapping_msgs/0.6.13-0.tar.gz;
    sha256 = "bbf5462db5e557342a36d22c5d7ff42559a5319bdb04589d7e7b0c57118ada07";
  };

  buildInputs = [ actionlib-msgs cob-object-detection-msgs sensor-msgs message-generation actionlib std-msgs geometry-msgs ];
  propagatedBuildInputs = [ actionlib-msgs cob-object-detection-msgs sensor-msgs message-runtime actionlib std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message, service and action definitions for environment perception.'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, cob-object-detection-msgs, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-3d-mapping-msgs";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/melodic/cob_3d_mapping_msgs/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "263177d023bf7be849cc0cf2aae30dcd68dfe852e33271bf393f7881dd5194ac";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs cob-object-detection-msgs geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message, service and action definitions for environment perception.'';
    license = with lib.licenses; [ asl20 ];
  };
}

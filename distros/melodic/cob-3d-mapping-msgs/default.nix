
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, cob-object-detection-msgs, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-3d-mapping-msgs";
  version = "0.6.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/melodic/cob_3d_mapping_msgs/0.6.17-1.tar.gz";
    name = "0.6.17-1.tar.gz";
    sha256 = "84bd7383d9f1ff63587e00b8c65ed83bc5c7b013dfc3882d5a5cddf6c64cf928";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs cob-object-detection-msgs geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message, service and action definitions for environment perception.'';
    license = with lib.licenses; [ asl20 ];
  };
}

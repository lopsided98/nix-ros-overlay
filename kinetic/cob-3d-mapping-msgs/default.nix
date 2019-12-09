
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, geometry-msgs, std-msgs, cob-object-detection-msgs, actionlib, catkin, actionlib-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-cob-3d-mapping-msgs";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_3d_mapping_msgs/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "36bfc63af920f743641259427d57f06b97eac058ed83f6345336c573e4fb5376";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs cob-object-detection-msgs actionlib actionlib-msgs message-generation ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs cob-object-detection-msgs actionlib actionlib-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message, service and action definitions for environment perception.'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, geometry-msgs, std-msgs, cob-object-detection-msgs, actionlib, catkin, actionlib-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-cob-3d-mapping-msgs";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/melodic/cob_3d_mapping_msgs/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "8efeb75129ad677ff76f1f42626d9fbc6cfa16b8854d349707765936e97e2d43";
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

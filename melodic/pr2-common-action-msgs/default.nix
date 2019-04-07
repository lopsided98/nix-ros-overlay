
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, sensor-msgs, catkin, message-generation, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-common-action-msgs";
  version = "0.0.11";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/melodic/pr2_common_action_msgs/0.0.11-0.tar.gz;
    sha256 = "65824648cd967a5c46b6861c1d0e9c76920d68ee4e28aff2783962c87f21dc3f";
  };

  buildInputs = [ sensor-msgs message-generation actionlib-msgs geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs message-runtime actionlib-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_common_action_msgs package'';
    #license = lib.licenses.BSD;
  };
}

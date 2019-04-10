
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, sensor-msgs, catkin, message-generation, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-pr2-common-action-msgs";
  version = "0.0.11";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/lunar/pr2_common_action_msgs/0.0.11-0.tar.gz;
    sha256 = "54c2e88298320e077b1d26ad7f3c6caa8fe89cbf70f37c2ad0e50c15055871ae";
  };

  buildInputs = [ sensor-msgs message-generation actionlib-msgs geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs message-runtime actionlib-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_common_action_msgs package'';
    #license = lib.licenses.BSD;
  };
}

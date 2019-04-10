
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, actionlib-msgs, pr2-common-action-msgs, trajectory-msgs, catkin, actionlib, rospy }:
buildRosPackage {
  pname = "ros-lunar-pr2-tuck-arms-action";
  version = "0.0.11";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/lunar/pr2_tuck_arms_action/0.0.11-0.tar.gz;
    sha256 = "355deca6ce12fe8999f8a879cfe22f107faa619814458b70c6636bbc2e1b0abc";
  };

  buildInputs = [ pr2-controllers-msgs actionlib actionlib-msgs rospy pr2-common-action-msgs trajectory-msgs ];
  propagatedBuildInputs = [ pr2-controllers-msgs actionlib actionlib-msgs rospy pr2-common-action-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_tuck_arms_action package'';
    #license = lib.licenses.BSD;
  };
}

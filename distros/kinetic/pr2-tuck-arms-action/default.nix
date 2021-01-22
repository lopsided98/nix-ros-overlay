
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, pr2-common-action-msgs, pr2-controllers-msgs, rospy, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-tuck-arms-action";
  version = "0.0.10";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/kinetic/pr2_tuck_arms_action/0.0.10-0.tar.gz";
    name = "0.0.10-0.tar.gz";
    sha256 = "58ab0b82e13f3b5939d50d980068750f56d7a7e9526b8790bade1270548615fe";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs pr2-common-action-msgs pr2-controllers-msgs rospy trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_tuck_arms_action package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

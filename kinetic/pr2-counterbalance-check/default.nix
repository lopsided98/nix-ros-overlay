
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, pr2-controller-configuration, catkin, rostest, pr2-self-test-msgs, pr2-controller-manager, std-msgs, joint-qualification-controllers, actionlib, rospy, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-pr2-counterbalance-check";
  version = "1.0.14";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_self_test-release/archive/release/kinetic/pr2_counterbalance_check/1.0.14-0.tar.gz;
    sha256 = "5a06f494f13c37a11423536e1728bbd09fe24ae1a7e223e049f355498dbfe893";
  };

  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ pr2-controllers-msgs pr2-self-test-msgs pr2-controller-manager pr2-controller-configuration joint-qualification-controllers actionlib std-msgs rospy ];
  nativeBuildInputs = [ pr2-controllers-msgs pr2-controller-configuration catkin rospy rostest pr2-self-test-msgs pr2-controller-manager joint-qualification-controllers actionlib std-msgs ];

  meta = {
    description = ''pr2_counterbalance_check'';
    #license = lib.licenses.BSD;
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, pr2-controller-configuration, catkin, rostest, pr2-self-test-msgs, pr2-controller-manager, actionlib, joint-qualification-controllers, rospy, std-msgs, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-pr2-counterbalance-check";
  version = "1.0.15-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_self_test-release/archive/release/kinetic/pr2_counterbalance_check/1.0.15-1.tar.gz;
    sha256 = "3809f95333fb0b5bd41f01c335ca84cc336e56973c6161e9393ba4898cd82a57";
  };

  buildInputs = [ pr2-controllers-msgs pr2-controller-configuration rospy rostest pr2-self-test-msgs pr2-controller-manager joint-qualification-controllers actionlib std-msgs ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ pr2-controllers-msgs pr2-controller-configuration rospy pr2-self-test-msgs pr2-controller-manager joint-qualification-controllers actionlib std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2_counterbalance_check'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

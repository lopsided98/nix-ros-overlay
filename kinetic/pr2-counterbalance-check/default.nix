
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, actionlib, catkin, rosunit, pr2-controller-configuration, pr2-controller-manager, joint-qualification-controllers, pr2-self-test-msgs, pr2-controllers-msgs, rospy, rostest }:
buildRosPackage {
  pname = "ros-kinetic-pr2-counterbalance-check";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_self_test-release/archive/release/kinetic/pr2_counterbalance_check/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "3809f95333fb0b5bd41f01c335ca84cc336e56973c6161e9393ba4898cd82a57";
  };

  buildType = "catkin";
  buildInputs = [ rostest std-msgs actionlib pr2-controller-configuration joint-qualification-controllers pr2-self-test-msgs pr2-controllers-msgs rospy pr2-controller-manager ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ std-msgs actionlib pr2-controller-configuration joint-qualification-controllers pr2-self-test-msgs pr2-controllers-msgs rospy pr2-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2_counterbalance_check'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

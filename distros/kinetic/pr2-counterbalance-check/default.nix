
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, joint-qualification-controllers, pr2-controller-configuration, pr2-controller-manager, pr2-controllers-msgs, pr2-self-test-msgs, rospy, rostest, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-counterbalance-check";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_self_test-release/archive/release/kinetic/pr2_counterbalance_check/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "3809f95333fb0b5bd41f01c335ca84cc336e56973c6161e9393ba4898cd82a57";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ actionlib joint-qualification-controllers pr2-controller-configuration pr2-controller-manager pr2-controllers-msgs pr2-self-test-msgs rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2_counterbalance_check'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

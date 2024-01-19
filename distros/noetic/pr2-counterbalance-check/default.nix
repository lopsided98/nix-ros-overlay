
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, joint-qualification-controllers, pr2-controller-configuration, pr2-controller-manager, pr2-controllers-msgs, pr2-self-test-msgs, rospy, rostest, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-pr2-counterbalance-check";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_self_test-release/archive/release/noetic/pr2_counterbalance_check/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "fd86f761e8d28ef9a7d5c3633926747fde4c7050758377595afac6914ef4ad92";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ actionlib joint-qualification-controllers pr2-controller-configuration pr2-controller-manager pr2-controllers-msgs pr2-self-test-msgs rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2_counterbalance_check'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

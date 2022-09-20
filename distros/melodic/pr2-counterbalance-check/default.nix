
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, joint-qualification-controllers, pr2-controller-configuration, pr2-controller-manager, pr2-controllers-msgs, pr2-self-test-msgs, rospy, rostest, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-counterbalance-check";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_self_test-release/archive/release/melodic/pr2_counterbalance_check/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "6698890b4bd9f1f68de5d8d19e7e4b466f67c7399bd65504701a059f622411fe";
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

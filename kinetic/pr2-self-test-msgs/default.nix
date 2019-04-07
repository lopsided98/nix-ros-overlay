
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-pr2-self-test-msgs";
  version = "1.0.14";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_self_test-release/archive/release/kinetic/pr2_self_test_msgs/1.0.14-0.tar.gz;
    sha256 = "0f3936262032ea31f2e1736140948b8c7cbf350488491c6cb36065d5575a186e";
  };

  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used in PR2 hardware testing.'';
    #license = lib.licenses.BSD;
  };
}

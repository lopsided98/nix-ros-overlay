
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-pr2-self-test-msgs";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_self_test-release/archive/release/kinetic/pr2_self_test_msgs/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "a276d8c4e15f0195ff51d0fb98460dad73ba2f264f4cc6de42462c933141f702";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used in PR2 hardware testing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

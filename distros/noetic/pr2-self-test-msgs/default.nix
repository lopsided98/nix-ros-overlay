
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-pr2-self-test-msgs";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_self_test-release/archive/release/noetic/pr2_self_test_msgs/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "217d79de99304d31c78a25e12a11c81d85496dc3a15eb3c90edbdaae112e7cb9";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used in PR2 hardware testing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

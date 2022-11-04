
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-pr2-self-test-msgs";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_self_test-release/archive/release/melodic/pr2_self_test_msgs/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "de71f082718fea8f61e7054fb4713e43fe8128c28bf66fccc47e33166db7f19a";
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

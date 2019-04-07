
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-msgs";
  version = "1.12.2";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common-release/archive/release/kinetic/pr2_msgs/1.12.2-0.tar.gz;
    sha256 = "ba4752b9db03b2f01c4e383def2cbe61685c91cb9ade7d57e6305eef955b2677";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for representing PR2 state, such as battery information and the PR2 fingertip sensors.'';
    #license = lib.licenses.BSD;
  };
}

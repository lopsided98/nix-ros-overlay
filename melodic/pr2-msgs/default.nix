
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-msgs";
  version = "1.12.3";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common-release/archive/release/melodic/pr2_msgs/1.12.3-0.tar.gz;
    sha256 = "9ced0d809f30168f7a97b29da6230c99e19011a5b4416111f02bc62f5e35b8d2";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for representing PR2 state, such as battery information and the PR2 fingertip sensors.'';
    #license = lib.licenses.BSD;
  };
}

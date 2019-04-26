
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-pr2-msgs";
  version = "1.12.4-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common-release/archive/release/lunar/pr2_msgs/1.12.4-1.tar.gz;
    sha256 = "6f14c967dda2f735238a3ae1a6774781ba7086ca1e2c036a8623f2da99c860c3";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for representing PR2 state, such as battery information and the PR2 fingertip sensors.'';
    #license = lib.licenses.BSD;
  };
}

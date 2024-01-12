
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-pr2-msgs";
  version = "1.13.1-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common-release/archive/release/noetic/pr2_msgs/1.13.1-1.tar.gz";
    name = "1.13.1-1.tar.gz";
    sha256 = "175c98cd5c4ce84e88c8c64a1d0496b4bb4d367b366ec8aaf0efc4d8b69655e5";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for representing PR2 state, such as battery information and the PR2 fingertip sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

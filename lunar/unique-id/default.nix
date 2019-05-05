
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, uuid-msgs, rospy, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-lunar-unique-id";
  version = "1.0.6";

  src = fetchurl {
    url = https://github.com/ros-geographic-info/unique_identifier-release/archive/release/lunar/unique_id/1.0.6-0.tar.gz;
    sha256 = "e45fcbeaabf28d27cc227a46aaa801fa1b33d5da775556cfa8e132c080aaf230";
  };

  buildInputs = [ uuid-msgs roscpp rospy ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ uuid-msgs roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Python and C++ interfaces for universally unique identifiers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

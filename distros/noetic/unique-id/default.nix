
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rospy, rosunit, uuid-msgs }:
buildRosPackage {
  pname = "ros-noetic-unique-id";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/unique_identifier-release/archive/release/noetic/unique_id/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "3bc1d8eace40dc0a1346ca7740c67962aba40ad3d6dabc095370e5b97b33d88f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ roscpp rospy uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Python and C++ interfaces for universally unique identifiers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

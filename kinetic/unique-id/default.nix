
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, uuid-msgs, rospy, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-unique-id";
  version = "1.0.5";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/unique_identifier-release/archive/release/kinetic/unique_id/1.0.5-0.tar.gz";
    name = "1.0.5-0.tar.gz";
    sha256 = "48e23c6379268830a23651a257f525a1bfe7a2ba85d798415612447a65fe9779";
  };

  buildType = "catkin";
  buildInputs = [ uuid-msgs roscpp rospy ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ uuid-msgs roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Python and C++ interfaces for universally unique identifiers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

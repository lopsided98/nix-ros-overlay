
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, uuid-msgs, rospy, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-unique-id";
  version = "1.0.6";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/unique_identifier-release/archive/release/melodic/unique_id/1.0.6-0.tar.gz";
    name = "1.0.6-0.tar.gz";
    sha256 = "8f995d23c4bdefadf40cd213fead2b4f4be1285f536a3578823fdaa46cc9019c";
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

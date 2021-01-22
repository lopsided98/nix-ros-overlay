
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cv-bridge, eigen, geometry-msgs, image-transport, nav-msgs, roscpp, rospy, sensor-msgs, std-msgs, std-srvs, turtlebot3-applications-msgs, turtlebot3-bringup }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-panorama";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_applications-release/archive/release/kinetic/turtlebot3_panorama/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "a09e7cce6b1fd67ad4656fb7db673c21cf1b79742e45d5f0379de2ea1c74bb4e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules cv-bridge eigen geometry-msgs image-transport nav-msgs roscpp rospy sensor-msgs std-msgs std-srvs turtlebot3-applications-msgs turtlebot3-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This app utilises pano_ros for taking snapshots and stitching them together to create panorama pictures.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

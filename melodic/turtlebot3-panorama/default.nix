
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, turtlebot3-bringup, geometry-msgs, std-msgs, std-srvs, cmake-modules, catkin, image-transport, eigen, cv-bridge, roscpp, rospy, nav-msgs, turtlebot3-applications-msgs }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-panorama";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_applications-release/archive/release/melodic/turtlebot3_panorama/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "1ea012a9fb7e79c68cb54f5e608739f79f378ab6867bad8d1aeee3d7e5039c3e";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs std-srvs cmake-modules image-transport eigen cv-bridge roscpp rospy nav-msgs turtlebot3-applications-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs turtlebot3-bringup std-msgs std-srvs cmake-modules image-transport eigen cv-bridge roscpp rospy nav-msgs turtlebot3-applications-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This app utilises pano_ros for taking snapshots and stitching them together to create panorama pictures.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, turtlebot3-applications-msgs, cmake-modules, image-transport, sensor-msgs, cv-bridge, catkin, nav-msgs, turtlebot3-bringup, rospy, std-msgs, roscpp, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-panorama";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3_applications-release/archive/release/melodic/turtlebot3_panorama/1.1.0-0.tar.gz;
    sha256 = "1ea012a9fb7e79c68cb54f5e608739f79f378ab6867bad8d1aeee3d7e5039c3e";
  };

  buildInputs = [ std-srvs turtlebot3-applications-msgs cmake-modules image-transport sensor-msgs cv-bridge rospy nav-msgs eigen std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ std-srvs turtlebot3-applications-msgs cmake-modules image-transport sensor-msgs cv-bridge rospy nav-msgs turtlebot3-bringup eigen std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This app utilises pano_ros for taking snapshots and stitching them together to create panorama pictures.'';
    #license = lib.licenses.BSD;
  };
}

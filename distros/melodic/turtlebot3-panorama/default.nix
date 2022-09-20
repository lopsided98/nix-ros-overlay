
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cv-bridge, eigen, geometry-msgs, image-transport, nav-msgs, roscpp, rospy, sensor-msgs, std-msgs, std-srvs, turtlebot3-applications-msgs, turtlebot3-bringup }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-panorama";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_applications-release/archive/release/melodic/turtlebot3_panorama/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "1ea012a9fb7e79c68cb54f5e608739f79f378ab6867bad8d1aeee3d7e5039c3e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules cv-bridge eigen geometry-msgs image-transport nav-msgs roscpp rospy sensor-msgs std-msgs std-srvs turtlebot3-applications-msgs turtlebot3-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This app utilises pano_ros for taking snapshots and stitching them together to create panorama pictures.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

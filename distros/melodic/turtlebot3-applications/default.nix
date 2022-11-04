
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, turtlebot3-automatic-parking, turtlebot3-automatic-parking-vision, turtlebot3-follow-filter, turtlebot3-follower, turtlebot3-panorama }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-applications";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_applications-release/archive/release/melodic/turtlebot3_applications/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "6a187830b2a3b3dc070e2ad870e5e17a471fa63318a305b188b13e35b9c5bd69";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ turtlebot3-automatic-parking turtlebot3-automatic-parking-vision turtlebot3-follow-filter turtlebot3-follower turtlebot3-panorama ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the turtlebot3 applications (meta package)'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}

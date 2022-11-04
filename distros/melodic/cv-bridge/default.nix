
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, opencv, python, pythonPackages, rosconsole, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-cv-bridge";
  version = "1.13.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vision_opencv-release/archive/release/melodic/cv_bridge/1.13.1-1.tar.gz";
    name = "1.13.1-1.tar.gz";
    sha256 = "091604696d5f953a6ca0a1dab57d6762e24281378a64b4665a9b8c41e5f2b3d0";
  };

  buildType = "catkin";
  checkInputs = [ pythonPackages.numpy rostest ];
  propagatedBuildInputs = [ boost opencv python pythonPackages.opencv3 rosconsole sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This contains CvBridge, which converts between ROS
    Image messages and OpenCV images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

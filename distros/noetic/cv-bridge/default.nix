
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, opencv, python3, python3Packages, rosconsole, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-cv-bridge";
  version = "1.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vision_opencv-release/archive/release/noetic/cv_bridge/1.16.0-1.tar.gz";
    name = "1.16.0-1.tar.gz";
    sha256 = "e6a11ec534e810c25eea0b8a28ad0a7f48afe616ba27d489c82800f4e8d19e28";
  };

  buildType = "catkin";
  checkInputs = [ python3Packages.numpy rostest ];
  propagatedBuildInputs = [ boost opencv python3 python3Packages.opencv3 rosconsole sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This contains CvBridge, which converts between ROS
    Image messages and OpenCV images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

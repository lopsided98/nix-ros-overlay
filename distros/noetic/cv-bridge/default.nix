
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, opencv, python3, python3Packages, rosconsole, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-cv-bridge";
  version = "1.16.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vision_opencv-release/archive/release/noetic/cv_bridge/1.16.1-1.tar.gz";
    name = "1.16.1-1.tar.gz";
    sha256 = "7a38d268df7fefac92560c1eb1781a89bf7cc0ca2eede8bb8475ad6d19049ad5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ python3Packages.numpy rostest ];
  propagatedBuildInputs = [ boost opencv python3 python3Packages.opencv3 rosconsole sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This contains CvBridge, which converts between ROS
    Image messages and OpenCV images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

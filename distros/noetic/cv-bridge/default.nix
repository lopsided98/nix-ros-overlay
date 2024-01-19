
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, opencv, python3, python3Packages, rosconsole, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-cv-bridge";
  version = "1.16.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vision_opencv-release/archive/release/noetic/cv_bridge/1.16.2-1.tar.gz";
    name = "1.16.2-1.tar.gz";
    sha256 = "053f0d3ab82a3183e1e087ada3e97a111071423d6a5f60f5f22ee71b0e3f1cb8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ python3Packages.numpy rostest ];
  propagatedBuildInputs = [ boost opencv opencv.cxxdev python3 python3Packages.opencv4 rosconsole sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This contains CvBridge, which converts between ROS
    Image messages and OpenCV images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

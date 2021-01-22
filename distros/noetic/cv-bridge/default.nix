
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, opencv3, python3, python3Packages, rosconsole, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-cv-bridge";
  version = "1.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vision_opencv-release/archive/release/noetic/cv_bridge/1.15.0-1.tar.gz";
    name = "1.15.0-1.tar.gz";
    sha256 = "62b9751b8a29f6ee3ca3d24f59dcd29ebdfba92e0002f3c2a23d333612dd3dcb";
  };

  buildType = "catkin";
  checkInputs = [ python3Packages.numpy rostest ];
  propagatedBuildInputs = [ boost opencv3 python3 python3Packages.opencv3 rosconsole sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This contains CvBridge, which converts between ROS
    Image messages and OpenCV images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, rostest, pythonPackages, catkin, python, opencv3, rosconsole }:
buildRosPackage {
  pname = "ros-kinetic-cv-bridge";
  version = "1.12.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vision_opencv-release/archive/release/kinetic/cv_bridge/1.12.8-0.tar.gz";
    name = "1.12.8-0.tar.gz";
    sha256 = "e7fe00e14863ff03d5a6df0032c8bda00e166c4a20fffbc1ce16fe55f3bc2397";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs boost python opencv3 rosconsole ];
  checkInputs = [ pythonPackages.numpy rostest ];
  propagatedBuildInputs = [ sensor-msgs boost python opencv3 rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This contains CvBridge, which converts between ROS
    Image messages and OpenCV images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

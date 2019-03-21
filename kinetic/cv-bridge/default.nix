
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, rosconsole, boost, sensor-msgs, catkin, pythonPackages, rostest, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-cv-bridge";
  version = "1.12.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/vision_opencv-release/archive/release/kinetic/cv_bridge/1.12.8-0.tar.gz;
    sha256 = "e7fe00e14863ff03d5a6df0032c8bda00e166c4a20fffbc1ce16fe55f3bc2397";
  };

  checkInputs = [ rostest pythonPackages.numpy ];
  propagatedBuildInputs = [ python rosconsole boost sensor-msgs opencv3 ];
  nativeBuildInputs = [ python rosconsole boost sensor-msgs catkin opencv3 ];

  meta = {
    description = ''This contains CvBridge, which converts between ROS
    Image messages and OpenCV images.'';
    #license = lib.licenses.BSD;
  };
}

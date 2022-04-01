
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, opencv3, python3, python3Packages, rosconsole, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-cv-bridge-python3";
  version = "1.13.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/vision_opencv_python3-release/archive/release/melodic/cv_bridge_python3/1.13.1-1.tar.gz";
    name = "1.13.1-1.tar.gz";
    sha256 = "fc5be865a9818dc753774113387a7a5a6efbe9b817a91707cb502076b9ab9704";
  };

  buildType = "catkin";
  checkInputs = [ python3Packages.numpy rostest ];
  propagatedBuildInputs = [ boost opencv3 python3 python3Packages.opencv3 rosconsole sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This contains CvBridge, which converts between ROS
    Image messages and OpenCV images.
    ==
    This package intentionally link against boost-python3 and
    install under /opt/ros/ROS_DISTRO/lib/python3/dist-package
    Please add
    import sys, os; sys.path.insert(0,'/opt/ros/' + os.environ['ROS_DISTRO'] + '/lib/python3/dist-packages/')
    before you call import cv_bridge'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

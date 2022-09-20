
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, opencv, python3, python3Packages, rosconsole, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-cv-bridge-python3";
  version = "1.13.2-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/vision_opencv_python3-release/archive/release/melodic/cv_bridge_python3/1.13.2-1.tar.gz";
    name = "1.13.2-1.tar.gz";
    sha256 = "c1e18d1a33ff149385882ca616fdd8cc706b6dbf80f293e1962c63498c3a8d24";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.catkin-pkg ];
  checkInputs = [ python3Packages.numpy rostest ];
  propagatedBuildInputs = [ boost opencv python3 python3Packages.opencv3 rosconsole sensor-msgs ];
  nativeBuildInputs = [ catkin python3Packages.catkin-pkg ];

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

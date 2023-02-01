
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, opencv, python3, python3Packages, rosconsole, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-cv-bridge-python3";
  version = "1.13.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "vision_opencv_python3-release";
        rev = "release/melodic/cv_bridge_python3/1.13.2-1";
        sha256 = "sha256-3TjMhxSJmyUSYxyIUALhzIDEeTfl3ciBxzHyMvmCtCc=";
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

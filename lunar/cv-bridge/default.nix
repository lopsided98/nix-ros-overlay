
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, rosconsole, boost, sensor-msgs, catkin, pythonPackages, rostest, opencv3 }:
buildRosPackage {
  pname = "ros-lunar-cv-bridge";
  version = "1.12.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/vision_opencv-release/archive/release/lunar/cv_bridge/1.12.8-0.tar.gz;
    sha256 = "fd8c77604689985dfecc9174f2af827d11f07b3c0fbf546243325c8e448c5b7f";
  };

  buildInputs = [ python rosconsole boost sensor-msgs opencv3 ];
  checkInputs = [ rostest pythonPackages.numpy ];
  propagatedBuildInputs = [ python rosconsole boost sensor-msgs opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This contains CvBridge, which converts between ROS
    Image messages and OpenCV images.'';
    #license = lib.licenses.BSD;
  };
}

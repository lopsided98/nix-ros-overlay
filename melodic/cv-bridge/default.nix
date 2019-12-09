
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, rostest, pythonPackages, catkin, python, opencv3, rosconsole }:
buildRosPackage {
  pname = "ros-melodic-cv-bridge";
  version = "1.13.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vision_opencv-release/archive/release/melodic/cv_bridge/1.13.0-0.tar.gz";
    name = "1.13.0-0.tar.gz";
    sha256 = "fb812741718a40399f538eaef7c887b79004afcdbe0271b3258c5c8ee9c55023";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs boost pythonPackages.opencv3 python opencv3 rosconsole ];
  checkInputs = [ pythonPackages.numpy rostest ];
  propagatedBuildInputs = [ sensor-msgs boost pythonPackages.opencv3 python opencv3 rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This contains CvBridge, which converts between ROS
    Image messages and OpenCV images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

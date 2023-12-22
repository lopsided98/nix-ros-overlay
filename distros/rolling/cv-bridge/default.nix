
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, boost, opencv, python-cmake-module, python3Packages, rclcpp, rcpputils, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-cv-bridge";
  version = "3.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/rolling/cv_bridge/3.4.0-2.tar.gz";
    name = "3.4.0-2.tar.gz";
    sha256 = "756685bbe2edfa5b38d2b044c5b6b5db9010f513f2903b6ffb1e94361006814f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros python-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python boost opencv opencv.cxxdev python3Packages.numpy python3Packages.opencv4 rclcpp rcpputils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros python-cmake-module ];

  meta = {
    description = ''This contains CvBridge, which converts between ROS2
    Image messages and OpenCV images.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}

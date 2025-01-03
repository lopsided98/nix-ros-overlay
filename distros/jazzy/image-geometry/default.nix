
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, opencv, python3Packages, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-image-geometry";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/jazzy/image_geometry/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "4c3c36ebb48cc3d6b902dd67471164fffa11839b92b5866dd4af631487648922";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ opencv opencv.cxxdev python3Packages.deprecated sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros ];

  meta = {
    description = "`image_geometry` contains C++ and Python libraries for interpreting images
    geometrically. It interfaces the calibration parameters in sensor_msgs/CameraInfo
    messages with OpenCV functions such as image rectification, much as cv_bridge
    interfaces ROS sensor_msgs/Image with OpenCV data types.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}

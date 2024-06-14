
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, opencv, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-image-geometry";
  version = "4.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/jazzy/image_geometry/4.0.0-2.tar.gz";
    name = "4.0.0-2.tar.gz";
    sha256 = "5ccc40e042f426cfda7f2a6c3dd321ddfaed2ffd4be47b4ad6a31eee84f9fd75";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ opencv opencv.cxxdev sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros ];

  meta = {
    description = "`image_geometry` contains C++ and Python libraries for interpreting images
    geometrically. It interfaces the calibration parameters in sensor_msgs/CameraInfo
    messages with OpenCV functions such as image rectification, much as cv_bridge
    interfaces ROS sensor_msgs/Image with OpenCV data types.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}

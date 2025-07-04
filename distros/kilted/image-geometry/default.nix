
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, opencv, python3Packages, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-image-geometry";
  version = "4.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/kilted/image_geometry/4.1.0-2.tar.gz";
    name = "4.1.0-2.tar.gz";
    sha256 = "98e4ade926761002fcac6cd39d660a7eb79223d18979a52d1192c1e03b7d7beb";
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

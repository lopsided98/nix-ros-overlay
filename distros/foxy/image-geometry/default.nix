
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, opencv, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-image-geometry";
  version = "3.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/foxy/image_geometry/3.0.6-1.tar.gz";
    name = "3.0.6-1.tar.gz";
    sha256 = "c435f4a3af86c11f19e9caaacb097a16189b1d1926eb115d30837e8ae2b5b6f6";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ opencv sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros ];

  meta = {
    description = ''`image_geometry` contains C++ and Python libraries for interpreting images
    geometrically. It interfaces the calibration parameters in sensor_msgs/CameraInfo
    messages with OpenCV functions such as image rectification, much as cv_bridge
    interfaces ROS sensor_msgs/Image with OpenCV data types.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}

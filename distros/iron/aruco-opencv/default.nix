
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, aruco-opencv-msgs, cv-bridge, image-transport, python3Packages, rclcpp, rclcpp-components, rclcpp-lifecycle, tf2-geometry-msgs, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-iron-aruco-opencv";
  version = "5.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aruco_opencv-release/archive/release/iron/aruco_opencv/5.1.0-1.tar.gz";
    name = "5.1.0-1.tar.gz";
    sha256 = "1aed831de8449a9fbc3dd4aed68b8b48826ac788ec9ad40547d8cac00745b74d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cpplint ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ aruco-opencv-msgs cv-bridge image-transport python3Packages.img2pdf python3Packages.numpy python3Packages.opencv4 rclcpp rclcpp-components rclcpp-lifecycle tf2-geometry-msgs tf2-ros yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ArUco marker detection using aruco module from OpenCV libraries.";
    license = with lib.licenses; [ mit ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, aruco-opencv-msgs, cv-bridge, image-transport, python3Packages, rclcpp, rclcpp-components, rclcpp-lifecycle, tf2-geometry-msgs, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-aruco-opencv";
  version = "6.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aruco_opencv-release/archive/release/rolling/aruco_opencv/6.0.1-1.tar.gz";
    name = "6.0.1-1.tar.gz";
    sha256 = "cb99b496a49b3025cd2c3d5e63e5d4be6e7ea2e9912d18c8cc78dfa3568d580d";
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

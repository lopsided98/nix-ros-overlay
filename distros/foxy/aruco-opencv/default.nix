
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, aruco-opencv-msgs, cv-bridge, image-transport, rclcpp, rclcpp-components, rclcpp-lifecycle, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-aruco-opencv";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aruco_opencv-release/archive/release/foxy/aruco_opencv/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "45cddb72580326049122896e65ebd9e16c82ee351413acc80a76cb6bf5a0f9cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ aruco-opencv-msgs cv-bridge image-transport rclcpp rclcpp-components rclcpp-lifecycle tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ArUco marker detection using aruco module from OpenCV libraries.'';
    license = with lib.licenses; [ mit ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, jsk-ros1-ros2-compat, launch-ros, launch-testing, launch-testing-ament-cmake, rclpy, rosidl-default-generators, rosidl-default-runtime, std-msgs, tf-transformations, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-jazzy-dynamic-tf-publisher";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/jazzy/dynamic_tf_publisher/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "903c3712380be62ae02e9fa7b4b935d09b36b36824595dec0c02917debb66a19";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ launch-ros launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs jsk-ros1-ros2-compat rclpy rosidl-default-runtime std-msgs tf-transformations tf2-ros tf2-ros-py ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "dynamically set the tf trensformation";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

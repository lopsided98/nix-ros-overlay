
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, jsk-ros1-ros2-compat, launch-ros, launch-testing, launch-testing-ament-cmake, rclpy, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs, tf-transformations, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-jazzy-dynamic-tf-publisher";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/jazzy/dynamic_tf_publisher/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "feee12d9b42b9b8f5bae68aac6c6321f5300cb898df2c8dbefe7a504ad490b68";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ launch-ros launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs jsk-ros1-ros2-compat rclpy rosidl-default-runtime std-msgs tf-transformations tf2-ros tf2-ros-py ];
  nativeBuildInputs = [ ament-cmake jsk-ros1-ros2-compat ros-environment rosidl-default-generators ];

  meta = {
    description = "dynamically set the tf trensformation";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

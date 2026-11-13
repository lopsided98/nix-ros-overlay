
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, jsk-ros1-ros2-compat, launch-ros, launch-testing, launch-testing-ament-cmake, rclpy, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs, tf-transformations, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-lyrical-dynamic-tf-publisher";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/lyrical/dynamic_tf_publisher/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "b9341abed466971bb6b02a4f3eaaad9cd6439ab4dac4b3015b142bf1f7f2275c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ launch-ros launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs jsk-ros1-ros2-compat rclpy rosidl-default-runtime std-msgs tf-transformations tf2-ros tf2-ros-py ];
  nativeBuildInputs = [ ament-cmake jsk-ros1-ros2-compat ros-environment rosidl-default-generators ];

  meta = {
    description = "dynamically set the tf trensformation";
    license = with lib.licenses; [ bsd3 ];
  };
}

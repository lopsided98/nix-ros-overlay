
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-clang-format, geometry-msgs, jsk-ros1-ros2-compat, launch-ros, launch-testing, launch-testing-ament-cmake, lifecycle-msgs, python3Packages, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs, tf2-eigen, tf2-msgs }:
buildRosPackage {
  pname = "ros-jazzy-jsk-topic-tools";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/jazzy/jsk_topic_tools/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "18cd64fa4f275523340fbb0c54fefd74c42e6931202ddf107c0d594b1420d9f4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-clang-format launch-ros launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs jsk-ros1-ros2-compat lifecycle-msgs python3Packages.numpy python3Packages.opencv4 python3Packages.scipy rclcpp rclcpp-components rclcpp-lifecycle std-msgs tf2-eigen tf2-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "jsk_topic_tools";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

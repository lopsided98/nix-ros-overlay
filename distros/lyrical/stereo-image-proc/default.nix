
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-lint-auto, ament-lint-common, cv-bridge, image-geometry, image-proc, image-transport, launch, launch-ros, launch-testing, launch-testing-ament-cmake, message-filters, python-cmake-module, python3Packages, rclcpp, rclcpp-components, rclpy, ros-testing, sensor-msgs, stereo-msgs }:
buildRosPackage {
  pname = "ros-lyrical-stereo-image-proc";
  version = "7.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/lyrical/stereo_image_proc/7.1.3-3.tar.gz";
    name = "7.1.3-3.tar.gz";
    sha256 = "352fe9f53863e634c12b6c167509af4049eb693f4c8791ac93c31fb6ecf591f1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-ros launch-testing launch-testing-ament-cmake python-cmake-module python3Packages.opencv4 rclpy ros-testing ];
  propagatedBuildInputs = [ cv-bridge image-geometry image-proc image-transport message-filters rclcpp rclcpp-components sensor-msgs stereo-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Stereo and single image rectification and disparity processing.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

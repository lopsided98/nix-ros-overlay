
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-lint-auto, ament-lint-common, cv-bridge, image-geometry, image-proc, image-transport, launch, launch-ros, launch-testing, launch-testing-ament-cmake, message-filters, python-cmake-module, python3Packages, rclcpp, rclcpp-components, rclpy, ros-testing, sensor-msgs, stereo-msgs }:
buildRosPackage {
  pname = "ros-rolling-stereo-image-proc";
  version = "6.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/rolling/stereo_image_proc/6.0.5-1.tar.gz";
    name = "6.0.5-1.tar.gz";
    sha256 = "276a397635f1f09381885717cda1316e3f1928e4e5f35c4c9d926092037708ae";
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

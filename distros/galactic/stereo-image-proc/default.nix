
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-lint-auto, ament-lint-common, cv-bridge, image-geometry, image-proc, image-transport, launch, launch-ros, launch-testing, launch-testing-ament-cmake, message-filters, python-cmake-module, python3Packages, rclcpp, rclcpp-components, rclpy, sensor-msgs, stereo-msgs }:
buildRosPackage {
  pname = "ros-galactic-stereo-image-proc";
  version = "2.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/galactic/stereo_image_proc/2.2.1-3.tar.gz";
    name = "2.2.1-3.tar.gz";
    sha256 = "1ad5b56a4512a600c6b01061fde14395deee73430e76ea9dba6da90ae96cd0b1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-ros launch-testing launch-testing-ament-cmake python-cmake-module python3Packages.opencv3 rclpy ];
  propagatedBuildInputs = [ cv-bridge image-geometry image-proc image-transport message-filters rclcpp rclcpp-components sensor-msgs stereo-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Stereo and single image rectification and disparity processing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-lint-auto, ament-lint-common, cv-bridge, image-geometry, image-proc, image-transport, launch, launch-ros, launch-testing, launch-testing-ament-cmake, message-filters, python-cmake-module, python3Packages, rclcpp, rclcpp-components, rclpy, sensor-msgs, stereo-msgs }:
buildRosPackage {
  pname = "ros-foxy-stereo-image-proc";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/foxy/stereo_image_proc/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "e9314a785ff174abf2de5ea20515613e87a164d94bcda020eee3c482431cc601";
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

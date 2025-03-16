
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, cv-bridge, image-geometry, image-transport, opencv, rclcpp, rclcpp-components, rcutils, sensor-msgs, tracetools-image-pipeline }:
buildRosPackage {
  pname = "ros-humble-image-proc";
  version = "3.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/humble/image_proc/3.0.7-1.tar.gz";
    name = "3.0.7-1.tar.gz";
    sha256 = "d512d1522426597038a0c4e31546327d8c49dd2f47c1bedda803054449d0881a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge image-geometry image-transport opencv opencv.cxxdev rclcpp rclcpp-components rcutils sensor-msgs tracetools-image-pipeline ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Single image rectification and color processing.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

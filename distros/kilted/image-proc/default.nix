
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, camera-calibration-parsers, cv-bridge, geometry-msgs, image-geometry, image-transport, opencv, rclcpp, rclcpp-components, rcutils, sensor-msgs, tf2, tf2-geometry-msgs, tracetools-image-pipeline }:
buildRosPackage {
  pname = "ros-kilted-image-proc";
  version = "6.0.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/kilted/image_proc/6.0.13-1.tar.gz";
    name = "6.0.13-1.tar.gz";
    sha256 = "5b6bad22a82a6454666217934b4d1e2acd4ecd414f2a1cce201809a73544332c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-calibration-parsers cv-bridge geometry-msgs image-geometry image-transport opencv opencv.cxxdev rclcpp rclcpp-components rcutils sensor-msgs tf2 tf2-geometry-msgs tracetools-image-pipeline ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Single image rectification and color processing.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

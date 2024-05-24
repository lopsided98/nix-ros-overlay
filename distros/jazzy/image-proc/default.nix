
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, camera-calibration-parsers, cv-bridge, geometry-msgs, image-geometry, image-transport, opencv, rclcpp, rclcpp-components, rcutils, sensor-msgs, tracetools-image-pipeline }:
buildRosPackage {
  pname = "ros-jazzy-image-proc";
  version = "5.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/jazzy/image_proc/5.0.1-2.tar.gz";
    name = "5.0.1-2.tar.gz";
    sha256 = "4397b80eab1f1e5ba745cd1cd0154e81d028e5cca894fe13b306828fea4b633f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-calibration-parsers cv-bridge geometry-msgs image-geometry image-transport opencv opencv.cxxdev rclcpp rclcpp-components rcutils sensor-msgs tracetools-image-pipeline ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Single image rectification and color processing.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

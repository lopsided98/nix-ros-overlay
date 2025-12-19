
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, camera-calibration-parsers, cv-bridge, geometry-msgs, image-geometry, image-transport, opencv, rclcpp, rclcpp-components, rcutils, sensor-msgs, tf2, tf2-geometry-msgs, tracetools-image-pipeline }:
buildRosPackage {
  pname = "ros-rolling-image-proc";
  version = "7.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/rolling/image_proc/7.1.3-1.tar.gz";
    name = "7.1.3-1.tar.gz";
    sha256 = "9c3e558c7f88d25b8632327df21e4ec901da0051617c3081d468269f5d5318c4";
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

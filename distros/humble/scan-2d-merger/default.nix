
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-scan-2d-merger";
  version = "2.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ali-pahlevani/2D_Scan_Merger_ROS2-release/archive/release/humble/scan_2d_merger/2.0.0-3.tar.gz";
    name = "2.0.0-3.tar.gz";
    sha256 = "92c16192a01914c3a698d3dc22c3b7f3a82c0a741251f43db01bf5d9846b60a8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rclcpp rclcpp-components sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ];

  meta = {
    description = "A laser scan merger for 1 to N 2D LiDARs, with approximate-time synchronization.";
    license = with lib.licenses; [ mit ];
  };
}

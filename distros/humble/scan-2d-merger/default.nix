
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-scan-2d-merger";
  version = "2.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ali-pahlevani/2D_Scan_Merger_ROS2-release/archive/release/humble/scan_2d_merger/2.1.0-2.tar.gz";
    name = "2.1.0-2.tar.gz";
    sha256 = "5789450e7fb9ad6b29fdb79a9118917c55243cdd6ced6da4e9fb09870fa9edf0";
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

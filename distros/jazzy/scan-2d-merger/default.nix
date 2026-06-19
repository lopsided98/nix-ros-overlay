
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-scan-2d-merger";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ali-pahlevani/2D_Scan_Merger_ROS2-release/archive/release/jazzy/scan_2d_merger/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "4b50b595a1b9f5e64c438702019e77d5f3a4c146696b32ffd861f12a9664f0d7";
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

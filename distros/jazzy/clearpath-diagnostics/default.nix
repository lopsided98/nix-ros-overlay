
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-platform-msgs, diagnostic-aggregator, diagnostic-updater, foxglove-bridge, rclcpp, ros2launch, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-diagnostics";
  version = "2.9.10-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_diagnostics/2.9.10-2.tar.gz";
    name = "2.9.10-2.tar.gz";
    sha256 = "6a9150fc49111e9084c0b8632cd681018ea57729b23f2409c6e88beb361960b2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clearpath-platform-msgs diagnostic-aggregator diagnostic-updater foxglove-bridge rclcpp ros2launch sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath Robot Diagnostics Monitor";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

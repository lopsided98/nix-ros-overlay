
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-platform-msgs, diagnostic-aggregator, diagnostic-updater, foxglove-bridge, rclcpp, ros2launch, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-diagnostics";
  version = "2.9.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_diagnostics/2.9.7-1.tar.gz";
    name = "2.9.7-1.tar.gz";
    sha256 = "99a5ee52eb325af4e297202c89507c44692da21a6d92107ce034b7d4d7914b0e";
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

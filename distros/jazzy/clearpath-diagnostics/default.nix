
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-platform-msgs, diagnostic-aggregator, diagnostic-updater, foxglove-bridge, rclcpp, ros2launch, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-diagnostics";
  version = "2.7.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_diagnostics/2.7.2-1.tar.gz";
    name = "2.7.2-1.tar.gz";
    sha256 = "718847deda919dade5053bd67f60fd52e6acf60c41fabfa3a1455544506441a9";
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

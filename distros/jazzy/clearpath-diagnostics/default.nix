
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-platform-msgs, diagnostic-aggregator, diagnostic-updater, foxglove-bridge, rclcpp, ros2launch, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-diagnostics";
  version = "2.6.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_diagnostics/2.6.3-1.tar.gz";
    name = "2.6.3-1.tar.gz";
    sha256 = "d8ec559eed09a06b8f68c48cd84b704268092aefa08fc7e49ef20d178e0288fb";
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


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-platform-msgs, diagnostic-aggregator, diagnostic-updater, foxglove-bridge, rclcpp, ros2launch, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-diagnostics";
  version = "2.9.14-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_diagnostics/2.9.14-1.tar.gz";
    name = "2.9.14-1.tar.gz";
    sha256 = "108d67519af8433e46d2a3bf5b944346865bf6fb158f603c6c68cd6e7e308575";
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


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-pytest, ament-cmake-python, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, launch-testing-ament-cmake, lm_sensors, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-diagnostic-common-diagnostics";
  version = "4.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/jazzy/diagnostic_common_diagnostics/4.2.7-1.tar.gz";
    name = "4.2.7-1.tar.gz";
    sha256 = "16d111ff84cdd95013f7f9b5e5ee6d3ed7e5ecd2e5dbb252e24d3b0e1255a36f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-pytest ament-cmake-xmllint ament-lint-auto launch-testing-ament-cmake ];
  propagatedBuildInputs = [ diagnostic-updater lm_sensors python3Packages.ntplib python3Packages.psutil rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Common diagnostic functions for e.g. HD or CPU usage.";
    license = with lib.licenses; [ bsd3 ];
  };
}

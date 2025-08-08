
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-pytest, ament-cmake-python, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, launch-testing-ament-cmake, lm_sensors, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-kilted-diagnostic-common-diagnostics";
  version = "4.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/kilted/diagnostic_common_diagnostics/4.3.6-1.tar.gz";
    name = "4.3.6-1.tar.gz";
    sha256 = "09ffae242099593ca7cde676a7aeb1c7169187812d6d65471b2930500e829929";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-pytest ament-cmake-xmllint ament-lint-auto launch-testing-ament-cmake ];
  propagatedBuildInputs = [ diagnostic-updater lm_sensors python3Packages.ntplib python3Packages.psutil rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "diagnostic_common_diagnostics";
    license = with lib.licenses; [ bsd3 ];
  };
}

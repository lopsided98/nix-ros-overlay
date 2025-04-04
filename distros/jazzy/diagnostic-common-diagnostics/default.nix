
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-pytest, ament-cmake-python, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, launch-testing-ament-cmake, lm_sensors, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-diagnostic-common-diagnostics";
  version = "4.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/jazzy/diagnostic_common_diagnostics/4.2.2-1.tar.gz";
    name = "4.2.2-1.tar.gz";
    sha256 = "d8a715bce992e033627c35d9a9323c17f027fb365e02da4141811fab6e484975";
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

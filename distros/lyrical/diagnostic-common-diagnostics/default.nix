
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-pytest, ament-cmake-python, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, launch-testing-ament-cmake, lm_sensors, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-diagnostic-common-diagnostics";
  version = "4.4.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/lyrical/diagnostic_common_diagnostics/4.4.6-3.tar.gz";
    name = "4.4.6-3.tar.gz";
    sha256 = "72a85ca4b75f4e4bc4a626c225768be5a9539f9f6f01344473744f5e61e3c988";
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

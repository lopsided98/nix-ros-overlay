
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-pytest, ament-cmake-python, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-diagnostic-common-diagnostics";
  version = "3.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/jazzy/diagnostic_common_diagnostics/3.1.2-3.tar.gz";
    name = "3.1.2-3.tar.gz";
    sha256 = "800e3681a5cc896467651b1f414dc332cca52c85e5248bbf6283b8b9cfe1b6d9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-pytest ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ diagnostic-updater python3Packages.ntplib rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "diagnostic_common_diagnostics";
    license = with lib.licenses; [ bsd3 ];
  };
}

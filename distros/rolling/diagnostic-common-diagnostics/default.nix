
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-pytest, ament-cmake-python, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-diagnostic-common-diagnostics";
  version = "3.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/rolling/diagnostic_common_diagnostics/3.1.2-2.tar.gz";
    name = "3.1.2-2.tar.gz";
    sha256 = "eba9b9e10432d0296250899340ac86a930ab5c11d3c7010ffa764688f5f08f92";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-pytest ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ diagnostic-updater python3Packages.ntplib rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''diagnostic_common_diagnostics'';
    license = with lib.licenses; [ bsd3 ];
  };
}

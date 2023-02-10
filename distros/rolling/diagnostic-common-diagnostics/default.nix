
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-python, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, ntp, rclpy }:
buildRosPackage {
  pname = "ros-rolling-diagnostic-common-diagnostics";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/rolling/diagnostic_common_diagnostics/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "27022010e8da7b28c0929f57c56a1efff26a536b9ab774c1079724f82c3e4b4e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ diagnostic-updater ntp rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''diagnostic_common_diagnostics'';
    license = with lib.licenses; [ bsd3 ];
  };
}

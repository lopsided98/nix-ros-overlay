
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-python, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, ntp, rclpy }:
buildRosPackage {
  pname = "ros-humble-diagnostic-common-diagnostics";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/humble/diagnostic_common_diagnostics/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "8e444af59a9386405ab4ae8acd4d65665bcd2e403c40762d1858e16c6c520dad";
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

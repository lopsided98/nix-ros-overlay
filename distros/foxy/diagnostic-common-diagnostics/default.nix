
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-python, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, ntp, rclpy }:
buildRosPackage {
  pname = "ros-foxy-diagnostic-common-diagnostics";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/foxy/diagnostic_common_diagnostics/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "d7c62bb4ddbeb0b26f48bbb8f7510d92339dc79085f05edb66ba7c0afacf92ab";
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

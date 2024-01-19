
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-pytest, ament-cmake-python, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-humble-diagnostic-common-diagnostics";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/humble/diagnostic_common_diagnostics/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "bc8fd9c0e6c23ade2666783ac5caf869311dce7aa4882386d6cba08846252067";
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

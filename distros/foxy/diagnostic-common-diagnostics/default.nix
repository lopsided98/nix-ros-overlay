
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-pytest, ament-cmake-python, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-foxy-diagnostic-common-diagnostics";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/foxy/diagnostic_common_diagnostics/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "b14ee1885c4f3b70280c27f0363ab26e65a2a1c98b77e083ed38de72eb23e7a3";
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

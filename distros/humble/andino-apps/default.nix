
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, andino-gz-classic, nav2-bringup, ros2launch, rviz2 }:
buildRosPackage {
  pname = "ros-humble-andino-apps";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/andino-release/archive/release/humble/andino_apps/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "0fdb106a1677ba55dbf6a7093df0f2f5b992670ff50e9c77253fde4048eb4e3e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ andino-gz-classic nav2-bringup ros2launch rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package for apps created with andino";
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}

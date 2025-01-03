
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-lint-common, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-autoware-cmake";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_cmake-release/archive/release/rolling/autoware_cmake/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "ce27a9ff153c27fb5a97d84bdcc06cf25b6da506a01e3ba7a83a0bd592102438";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ ament-cmake-auto ament-lint-auto ros-environment ];
  nativeBuildInputs = [ ament-cmake-auto ament-lint-auto ];

  meta = {
    description = "CMake scripts for Autoware";
    license = with lib.licenses; [ asl20 ];
  };
}

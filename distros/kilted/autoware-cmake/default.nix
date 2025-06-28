
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-lint-common, ros-environment }:
buildRosPackage {
  pname = "ros-kilted-autoware-cmake";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_cmake-release/archive/release/kilted/autoware_cmake/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "99b85749e24558c0bc778f5fdf8a002cdbd7284453cb6203097934d69f8b8d76";
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

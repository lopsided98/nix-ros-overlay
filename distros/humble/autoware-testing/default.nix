
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-core, ament-cmake-lint-cmake, ament-copyright, ament-flake8, ament-pep257, autoware-cmake, ros-testing }:
buildRosPackage {
  pname = "ros-humble-autoware-testing";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_testing/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "be66edc66faff9be6830cd6de19be8dadd53f0309ebc6aa4313990a44dc42874";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-lint-cmake autoware-cmake ];
  checkInputs = [ ament-cmake-core ament-copyright ament-flake8 ament-pep257 ros-testing ];
  propagatedBuildInputs = [ ros-testing ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-lint-cmake autoware-cmake ros-testing ];

  meta = {
    description = "Tools for handling standard tests based on ros_testing";
    license = with lib.licenses; [ asl20 ];
  };
}

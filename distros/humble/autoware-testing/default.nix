
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-core, ament-cmake-lint-cmake, ament-copyright, ament-flake8, ament-pep257, autoware-cmake, ros-testing }:
buildRosPackage {
  pname = "ros-humble-autoware-testing";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_testing/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "6d88a00269db86b739219f060c02839528d25b596b02ef2ab630ea6e668fa559";
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

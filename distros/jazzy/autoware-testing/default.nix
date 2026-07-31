
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-core, ament-cmake-lint-cmake, ament-copyright, ament-flake8, ament-pep257, autoware-cmake, ros-testing }:
buildRosPackage {
  pname = "ros-jazzy-autoware-testing";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_testing/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "6f161814619f8db537832eab476a515fac924aa5ae19bc3229f6805c0b0d1caa";
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

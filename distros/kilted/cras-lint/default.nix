
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, ament-lint-common }:
buildRosPackage {
  pname = "ros-kilted-cras-lint";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cras_ros_utils-release/archive/release/kilted/cras_lint/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "3a0898c46f2bb861be56fb2ec3f98b1e8f239572654d0c2d7f0b49935b89f293";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = "Various utilities to work with bag files";
    license = with lib.licenses; [ bsd3 ];
  };
}

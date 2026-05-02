
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-cras-lint";
  version = "3.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cras_ros_utils-release/archive/release/rolling/cras_lint/3.0.2-2.tar.gz";
    name = "3.0.2-2.tar.gz";
    sha256 = "99f7f2ee859cc623bba74cd7e001548bf1012ff8a1cf24b6ac0db7ffbe0a3ab8";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = "Various utilities to work with bag files";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

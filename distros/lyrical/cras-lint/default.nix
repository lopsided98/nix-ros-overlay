
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, ament-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-cras-lint";
  version = "3.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cras_ros_utils-release/archive/release/lyrical/cras_lint/3.0.2-3.tar.gz";
    name = "3.0.2-3.tar.gz";
    sha256 = "c62725a3f5b870b890c0da221758ac2681aa66022a8ed02ee2ccd464f63a9b0c";
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

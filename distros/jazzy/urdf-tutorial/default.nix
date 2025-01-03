
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, urdf-launch }:
buildRosPackage {
  pname = "ros-jazzy-urdf-tutorial";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_tutorial-release/archive/release/jazzy/urdf_tutorial/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "e0ff8622321d5bae6e02a7fdd827143da2a2e732df6883fc172aaa8b8001cbee";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ urdf-launch ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains a number of URDF tutorials.";
    license = with lib.licenses; [ "BSD-3-clause" ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, urdf-launch }:
buildRosPackage {
  pname = "ros-lyrical-urdf-tutorial";
  version = "1.1.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_tutorial-release/archive/release/lyrical/urdf_tutorial/1.1.0-4.tar.gz";
    name = "1.1.0-4.tar.gz";
    sha256 = "baa7a978d75457b0a96b699e313e9b5f56b0a1d1060853ad3a7de3b16a14e7b9";
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

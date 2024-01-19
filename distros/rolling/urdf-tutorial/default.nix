
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, urdf-launch }:
buildRosPackage {
  pname = "ros-rolling-urdf-tutorial";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_tutorial-release/archive/release/rolling/urdf_tutorial/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "cd4eaab7efa24875028071407e507a8c280119b0db92f32b0a2bf1572b742fcd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ urdf-launch ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains a number of URDF tutorials.'';
    license = with lib.licenses; [ "BSD-3-clause" ];
  };
}

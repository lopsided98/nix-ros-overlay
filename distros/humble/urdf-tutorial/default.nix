
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, urdf-launch }:
buildRosPackage {
  pname = "ros-humble-urdf-tutorial";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_tutorial-release/archive/release/humble/urdf_tutorial/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "50f0673e2efe6c7e893da4984f8bd7dac87523db1a58b03bea9bb19c57eed1e1";
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

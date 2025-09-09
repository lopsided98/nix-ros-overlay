
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, urdf-launch }:
buildRosPackage {
  pname = "ros-kilted-urdf-tutorial";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_tutorial-release/archive/release/kilted/urdf_tutorial/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "2e6f31ab9888fdbbf5f93ec0b8e949613acc77566ade8f559efa2619cd6e8f90";
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

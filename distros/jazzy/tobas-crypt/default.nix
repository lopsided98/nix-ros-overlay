
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pkg-config, tobas-linux }:
buildRosPackage {
  pname = "ros-jazzy-tobas-crypt";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_crypt/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "45843863a6272b4679c33e832a75edfc4056fe24d88e152fdb22e3346bff7af8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  propagatedBuildInputs = [ tobas-linux ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "Cryptographic hashing and password-verification utilities for Tobas applications.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}

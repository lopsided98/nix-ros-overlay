
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pkg-config, tobas-linux }:
buildRosPackage {
  pname = "ros-jazzy-tobas-crypt";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_crypt/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "8ab46cb16d3b8069e456475bc3c56f30343ad3c03c48c3ffccb654ce4f5e9e12";
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

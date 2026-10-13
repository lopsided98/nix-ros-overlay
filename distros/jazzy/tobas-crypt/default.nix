
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pkg-config, tobas-linux }:
buildRosPackage {
  pname = "ros-jazzy-tobas-crypt";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_crypt/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "075ad4253ce1b1474730bb1dedac9fbb3ecb4068ca13f772738f26ba8bc3e2cb";
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

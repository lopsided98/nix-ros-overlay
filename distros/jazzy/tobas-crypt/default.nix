
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pkg-config, tobas-linux }:
buildRosPackage {
  pname = "ros-jazzy-tobas-crypt";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_crypt/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "c56744f49b1348f62c7fb1e2eb531f6916660522118e1c28db7185a2f1840c13";
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

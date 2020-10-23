
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-foxy-osqp-vendor";
  version = "0.0.1-r3";

  src = fetchurl {
    url = "https://github.com/tier4/osqp_vendor-release/archive/release/foxy/osqp_vendor/0.0.1-3.tar.gz";
    name = "0.0.1-3.tar.gz";
    sha256 = "7603e1c8ef7cb2b492ed69a2f084e65978b63e4c365ae4dccb1abbdbbccf800b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around osqp that ships with a CMake module'';
    license = with lib.licenses; [ asl20 ];
  };
}

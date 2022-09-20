
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ouxt-lint-common }:
buildRosPackage {
  pname = "ros-galactic-lua-vendor";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/lua_vendor-release/archive/release/galactic/lua_vendor/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "190a7055e064d1767bb8958cd0248764ab8b54a1a72072561207b76c2a6211b3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ouxt-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO: Package description'';
    license = with lib.licenses; [ asl20 ];
  };
}

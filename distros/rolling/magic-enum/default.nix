
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-magic-enum";
  version = "0.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/magic_enum-release/archive/release/rolling/magic_enum/0.9.8-1.tar.gz";
    name = "0.9.8-1.tar.gz";
    sha256 = "dd6246b5bdf7693af9ecd3a6bb2c19ef99266b0416302c9260c5da618d151439";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  # Upstream's GenPkgConfig.cmake module requires CMAKE_INSTALL_INCLUDEDIR to
  # be a relative path, but nixpkgs' cmake setup hook sets it to an absolute
  # path to support split outputs. Override it back to a relative path.
  cmakeFlags = [ "-DCMAKE_INSTALL_INCLUDEDIR=include" ];

  meta = {
    description = "Static reflection for enums (to string, from string, iteration) for modern C++,
    work with any enum type without any macro or boilerplate code";
    license = with lib.licenses; [ mit ];
  };
}

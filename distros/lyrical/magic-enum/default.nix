
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-lyrical-magic-enum";
  version = "0.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/magic_enum-release/archive/release/lyrical/magic_enum/0.9.8-1.tar.gz";
    name = "0.9.8-1.tar.gz";
    sha256 = "8377053f32399d3ac1c68f63bb0b5f11f525fc9fb0aea3df551c862a5a70c897";
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

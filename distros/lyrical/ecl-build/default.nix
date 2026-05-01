
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ecl-license }:
buildRosPackage {
  pname = "ros-lyrical-ecl-build";
  version = "1.0.3-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_tools-release/archive/release/lyrical/ecl_build/1.0.3-6.tar.gz";
    name = "1.0.3-6.tar.gz";
    sha256 = "091bf4821ac45c73c0477d0cc17ff1580f3a31c98d8276d3af4e847eba8d9f55";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ecl-license ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Collection of cmake/make build tools primarily for ecl development itself, but also
     contains a few cmake modules useful outside of the ecl.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

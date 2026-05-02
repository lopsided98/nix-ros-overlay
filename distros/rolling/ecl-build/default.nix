
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ecl-license }:
buildRosPackage {
  pname = "ros-rolling-ecl-build";
  version = "1.0.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_tools-release/archive/release/rolling/ecl_build/1.0.3-5.tar.gz";
    name = "1.0.3-5.tar.gz";
    sha256 = "0bf178b0125a1bc1e04e06b1de98369f4ffce162d2fcbe1af2ddea08e3b4f3d0";
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

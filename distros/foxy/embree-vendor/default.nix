
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, glfw3, pkg-config }:
buildRosPackage {
  pname = "ros-foxy-embree-vendor";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/embree_vendor-release/archive/release/foxy/embree_vendor/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "edb84502c8f4e4c53fe8614daf2e06aa29abcb98c28c87367901a67585e0a8e1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ glfw3 pkg-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''vendor packages for intel raytracing kernel library'';
    license = with lib.licenses; [ asl20 ];
  };
}

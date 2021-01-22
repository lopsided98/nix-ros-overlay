
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ecl-license }:
buildRosPackage {
  pname = "ros-dashing-ecl-build";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_tools-release/archive/release/dashing/ecl_build/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "fbdd99bc6ffadaf39ffdf18c1a43b174de9fe51cc2c584cbaa9c6b44ca481792";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ecl-license ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Collection of cmake/make build tools primarily for ecl development itself, but also
     contains a few cmake modules useful outside of the ecl.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

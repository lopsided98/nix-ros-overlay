
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ecl-license }:
buildRosPackage {
  pname = "ros-humble-ecl-build";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_tools-release/archive/release/humble/ecl_build/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "97527c8a8c12c97d5c339f7aac5e77da269df6de036da933f19f0f8c103d864c";
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

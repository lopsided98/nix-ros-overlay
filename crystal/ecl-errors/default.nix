
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-build, ecl-license, ecl-config, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-crystal-ecl-errors";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_lite-release/archive/release/crystal/ecl_errors/1.0.1-0.tar.gz;
    sha256 = "7253c6f1af5c15d658d23f14b52f07fa1bc48648b8dfa34eed0c95ba8875b186";
  };

  buildInputs = [ ecl-license ecl-config ecl-build ];
  propagatedBuildInputs = [ ecl-license ecl-config ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This library provides lean and mean error mechanisms.
    It includes c style error functions as well as a few
    useful macros. For higher level mechanisms,
    refer to ecl_exceptions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

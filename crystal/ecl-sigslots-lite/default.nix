
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-build, ecl-license, ecl-errors, ament-cmake-ros, ecl-config }:
buildRosPackage {
  pname = "ros-crystal-ecl-sigslots-lite";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_lite-release/archive/release/crystal/ecl_sigslots_lite/1.0.1-0.tar.gz;
    sha256 = "e9103435c3befa6c163051a944ca2964b5761d2db5697a288be95cc82aa6a423";
  };

  buildInputs = [ ecl-license ecl-errors ecl-config ecl-build ];
  propagatedBuildInputs = [ ecl-license ecl-errors ecl-config ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This avoids use of dynamic storage (malloc/new) and thread safety (mutexes) to
     provide a very simple sigslots implementation that can be used for *very*
     embedded development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

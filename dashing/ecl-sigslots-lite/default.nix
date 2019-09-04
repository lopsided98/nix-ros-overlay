
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-build, ecl-license, ecl-errors, ament-cmake-ros, ecl-config }:
buildRosPackage {
  pname = "ros-dashing-ecl-sigslots-lite";
  version = "1.0.3-r2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_lite-release/archive/release/dashing/ecl_sigslots_lite/1.0.3-2.tar.gz;
    sha256 = "f8926832ac695768aee74af525ea77864feffcc90ace27060a155d01792b9183";
  };

  buildType = "ament_cmake";
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

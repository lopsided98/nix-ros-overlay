
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-license, ecl-errors, ecl-config, ecl-build }:
buildRosPackage {
  pname = "ros-eloquent-ecl-sigslots-lite";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/eloquent/ecl_sigslots_lite/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "a5bc6e5196e774a12156b24d61eaf993df3e4d0bb301569698cc16868323294c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-errors ecl-license ecl-config ecl-build ];
  propagatedBuildInputs = [ ecl-errors ecl-license ecl-config ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This avoids use of dynamic storage (malloc/new) and thread safety (mutexes) to
     provide a very simple sigslots implementation that can be used for *very*
     embedded development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

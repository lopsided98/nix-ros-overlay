
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-eloquent-ecl-io";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/eloquent/ecl_io/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "2bfe44bfb2ecf4e227ebfb0739542ab6c9fc65521adb49ade54bb0b2fe70c6d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-build ];
  propagatedBuildInputs = [ ecl-config ecl-errors ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Most implementations (windows, posix, ...) have slightly different api for
     low level input-output functions. These are gathered here and re-represented
     with a cross platform set of functions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

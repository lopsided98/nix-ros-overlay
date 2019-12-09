
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-license, ecl-errors, ecl-config, ecl-build }:
buildRosPackage {
  pname = "ros-dashing-ecl-io";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/dashing/ecl_io/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "b9606f1ae10b48997260d37a70a3df5dfd0b1be5885165cab176fe66907e3917";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-errors ecl-license ecl-config ecl-build ];
  propagatedBuildInputs = [ ecl-errors ecl-license ecl-config ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Most implementations (windows, posix, ...) have slightly different api for
     low level input-output functions. These are gathered here and re-represented
     with a cross platform set of functions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

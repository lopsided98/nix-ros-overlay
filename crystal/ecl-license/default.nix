
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-crystal-ecl-license";
  version = "1.0.1-r1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_tools-release/archive/release/crystal/ecl_license/1.0.1-1.tar.gz;
    sha256 = "3a142f1a9e1aa1229979e45856ab06c6c923a9efd595dd616d2f04b2f5fbc721";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maintains the ecl licenses and also provides an install
     target for deploying licenses with the ecl libraries.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

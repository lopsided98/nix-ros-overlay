
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-ecl-license";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_tools-release/archive/release/eloquent/ecl_license/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "05f5d4c3028e2ddbd2a4fc42401f21c0275fbf43dd5717dfa34ac38a133ce6e9";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maintains the ecl licenses and also provides an install
     target for deploying licenses with the ecl libraries.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

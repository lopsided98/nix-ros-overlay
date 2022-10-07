
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-ecl-license";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_tools-release/archive/release/humble/ecl_license/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "20410ca56e015cf0afe26298b16849284407b8aa8311af39aa84224db5527563";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maintains the ecl licenses and also provides an install
     target for deploying licenses with the ecl libraries.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

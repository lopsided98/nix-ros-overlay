
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-ecl-license";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_tools-release/archive/release/humble/ecl_license/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "ada441ed7cf511dc55ab117148887dbdbf0bb5365af55382e6e110d78f9e7b9f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maintains the ecl licenses and also provides an install
     target for deploying licenses with the ecl libraries.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

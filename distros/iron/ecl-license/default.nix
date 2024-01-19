
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-iron-ecl-license";
  version = "1.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_tools-release/archive/release/iron/ecl_license/1.0.3-4.tar.gz";
    name = "1.0.3-4.tar.gz";
    sha256 = "a08371145a140be4a8e226ef27178bfc0e557b843f00668a95d23718eae6ff0c";
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

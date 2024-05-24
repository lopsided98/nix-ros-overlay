
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-ecl-license";
  version = "1.0.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_tools-release/archive/release/jazzy/ecl_license/1.0.3-5.tar.gz";
    name = "1.0.3-5.tar.gz";
    sha256 = "b2e18229085098e045eed08e39438da5029b841759ab82306426ffaddc6f6eb4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Maintains the ecl licenses and also provides an install
     target for deploying licenses with the ecl libraries.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

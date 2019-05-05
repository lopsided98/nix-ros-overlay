
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, libpng12 }:
buildRosPackage {
  pname = "ros-lunar-multisense-lib";
  version = "4.0.2-r1";

  src = fetchurl {
    url = https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/lunar/multisense_lib/4.0.2-1.tar.gz;
    sha256 = "09c931cdf283c5591d9f1b2668ca5641ba5142208a89b4e314203ed102e14410";
  };

  buildInputs = [ cv-bridge libpng12 ];
  propagatedBuildInputs = [ cv-bridge libpng12 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_lib'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

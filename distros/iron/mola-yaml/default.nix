
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-iron-mola-yaml";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/mola_yaml/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "21db2592475ca3297460e66e1476584dd83c2faafccf2c7d720a0797370cfd32";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''YAML helper library common to MOLA modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

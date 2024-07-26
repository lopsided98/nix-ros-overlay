
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mola-yaml";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_yaml/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "cdaaba42526da82183a2cce670cf9c08bba91991559618367f09dd4ab40f849a";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "YAML helper library common to MOLA modules";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

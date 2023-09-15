
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mola-yaml";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_yaml/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "0787c7420ac1a0245e5fd6bbc4b5576be528165d40813a7b008762b784f5dcd6";
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

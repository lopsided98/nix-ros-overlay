
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mola-yaml";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_yaml/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "d88bb0fa62c746b2c9d88b71577a2aaf09d09822c2aa282ff69023ad8d946052";
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


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mola-yaml";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_yaml/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "6d241512ed2a4c6573b05aebdfca19cd6d15c43262babecbc75c99ac84958be8";
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

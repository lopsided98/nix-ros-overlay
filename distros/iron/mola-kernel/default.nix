
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-yaml, mrpt2 }:
buildRosPackage {
  pname = "ros-iron-mola-kernel";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/mola_kernel/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "c90bfad41604c995f2b7cb3eb9dd696517f351830c2b828ef05b7e60b69855e2";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-yaml mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Fundamental C++ virtual interfaces and data types for the rest of MOLA modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

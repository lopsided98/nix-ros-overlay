
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-yaml, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mola-kernel";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_kernel/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "6318388bae11442b31d9cd2abbb9219609eb6b01b833b18d8f8536c482a54908";
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

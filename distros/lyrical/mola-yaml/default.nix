
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-containers, mrpt-system }:
buildRosPackage {
  pname = "ros-lyrical-mola-yaml";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/lyrical/mola_yaml/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "78d38f28aab8f4f3852a83b2e739dfb93bfea450e82652455bcfc1de3ba87823";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt-containers mrpt-system ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "YAML helper library common to MOLA modules";
    license = with lib.licenses; [ bsd3 ];
  };
}

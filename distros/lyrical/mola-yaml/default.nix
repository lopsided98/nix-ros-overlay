
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-containers, mrpt-system }:
buildRosPackage {
  pname = "ros-lyrical-mola-yaml";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/lyrical/mola_yaml/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "fc53b988d43ee14ab532ee3d94fed0855aea392603650907697991e5a08a0430";
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

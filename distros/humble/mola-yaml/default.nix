
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-containers, mrpt-system }:
buildRosPackage {
  pname = "ros-humble-mola-yaml";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_yaml/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "6032b8c4b9ae4cf41ba31761cc75f78c4f0d3f8b574c9c1ee08c612935046a00";
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

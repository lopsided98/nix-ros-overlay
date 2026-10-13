
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-containers, mrpt-system }:
buildRosPackage {
  pname = "ros-lyrical-mola-yaml";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/lyrical/mola_yaml/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "6dc5e1a180cc4d1e2b1c274fcf8c0bbd676bdcc8da7fa6f1d16b6b1e874a79c0";
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

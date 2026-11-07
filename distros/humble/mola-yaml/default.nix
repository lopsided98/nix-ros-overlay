
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-containers, mrpt-system }:
buildRosPackage {
  pname = "ros-humble-mola-yaml";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_yaml/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "cfd98b5232ce86aebec3a736490a703a9401b6ec5f4585a1e470e511395f37a8";
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

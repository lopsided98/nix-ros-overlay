
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libbase }:
buildRosPackage {
  pname = "ros-kilted-mola-yaml";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_yaml/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "c0dec0688e5003400dec2dcefadb7ca2b4f5daeaacbc81d6253afd603edd17fa";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt-libbase ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "YAML helper library common to MOLA modules";
    license = with lib.licenses; [ bsd3 ];
  };
}

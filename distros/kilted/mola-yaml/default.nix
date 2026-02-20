
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libbase }:
buildRosPackage {
  pname = "ros-kilted-mola-yaml";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_yaml/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "f43cf5040b85ab5e1333d363aee40e84209262b20fd4fa9f86930a8e5f82f519";
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

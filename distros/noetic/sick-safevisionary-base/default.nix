
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-noetic-sick-safevisionary-base";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safevisionary_base-release/archive/release/noetic/sick_safevisionary_base/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "a2580274c658ec440ab3fc87e9199b71e15a7f7759d4631fd4f8fc84a6b3824f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The package provides the basic hardware interface to the SICK Safevisionary sensor'';
    license = with lib.licenses; [ asl20 ];
  };
}

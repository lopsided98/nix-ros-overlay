
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libbase }:
buildRosPackage {
  pname = "ros-rolling-mola-yaml";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_yaml/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "3781b00261bc4e05586f5766511e1aea8defc7e0fcb6827be1786f3137f8caba";
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

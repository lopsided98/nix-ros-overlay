
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libbase }:
buildRosPackage {
  pname = "ros-kilted-mola-yaml";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_yaml/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "936cf536b947c81f622f5e3d9c8198e9b55bd06de6670affeddd8755e661fdd6";
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

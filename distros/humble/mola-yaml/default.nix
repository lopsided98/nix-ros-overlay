
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mola-yaml";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_yaml/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "607b9564965f05fb8712cf107cb669d6ec7ad3ec3005a22fc1e9f334cab50f80";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "YAML helper library common to MOLA modules";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

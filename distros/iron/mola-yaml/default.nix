
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-iron-mola-yaml";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/mola_yaml/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "aaabcfc77db45ac03b375c2beb8308cde7529fe69dc5ef9ddd2d4bf9fbb4d71b";
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

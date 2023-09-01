
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mola-yaml";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_yaml/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "b2a9954be64a5a4e7732f5038b227b0258e2611220cb80133938410178c3de9a";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''YAML helper library common to MOLA modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

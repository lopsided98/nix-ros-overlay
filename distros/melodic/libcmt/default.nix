
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cacert, cmake, cv-bridge, git, openssl }:
buildRosPackage {
  pname = "ros-melodic-libcmt";
  version = "2.1.24-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/libcmt/2.1.24-2.tar.gz";
    name = "2.1.24-2.tar.gz";
    sha256 = "27528289685effa72e038798c91577ca99ed3ce45912e4cb25ed10bc23554f30";
  };

  buildType = "cmake";
  buildInputs = [ cacert cmake git openssl ];
  propagatedBuildInputs = [ cv-bridge ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''libCMT ROS Wrapper'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

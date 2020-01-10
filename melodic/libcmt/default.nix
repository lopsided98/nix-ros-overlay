
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cacert, cmake, git, opencv3, openssl }:
buildRosPackage {
  pname = "ros-melodic-libcmt";
  version = "2.1.13-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/libcmt/2.1.13-1.tar.gz";
    name = "2.1.13-1.tar.gz";
    sha256 = "0c326290029afbb6e1a1772ce64ec363360b2996f06a0a21616ccc2c121ac164";
  };

  buildType = "cmake";
  buildInputs = [ cacert git openssl ];
  propagatedBuildInputs = [ opencv3 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''libCMT ROS Wrapper'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

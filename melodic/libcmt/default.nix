
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, cacert, openssl, cmake, opencv3 }:
buildRosPackage {
  pname = "ros-melodic-libcmt";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/libcmt/2.1.11-0.tar.gz;
    sha256 = "26abb0780e7ebc0d27e52c3fdf19a4f29b22d747b6744441ee132ebc3850fdfd";
  };

  buildInputs = [ openssl cacert git opencv3 ];
  propagatedBuildInputs = [ opencv3 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''libCMT ROS Wrapper'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

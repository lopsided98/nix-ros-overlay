
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-data";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_data/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "47e560b9f4e79ec3f7bb159b3a3f2e2aa6736fafc822ccd037e6ba1cdac90920";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "MRPT shared data files: test datasets and example config files";
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-data";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_data/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "b27560f53339fa17bf5dd2e5483dd56ee69bc80d21cfed60dd0bf2acd6e97374";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "MRPT shared data files: test datasets and example config files";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

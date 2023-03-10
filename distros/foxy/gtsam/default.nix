
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, tbb }:
buildRosPackage {
  pname = "ros-foxy-gtsam";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/foxy/gtsam/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "20a3ec1d0d43bef2012b85da726b50ff7bfb926ffc20c069a63bbcd75c4af93a";
  };

  buildType = "cmake";
  buildInputs = [ boost cmake eigen tbb ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''gtsam'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-urg-c";
  version = "1.0.4000-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_c-release/archive/release/dashing/urg_c/1.0.4000-1.tar.gz";
    name = "1.0.4000-1.tar.gz";
    sha256 = "0996a08e8c0ea459b21b3dcbad5959a6afc47182068bab7d3c90c7726e8a5915";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The urg_c package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

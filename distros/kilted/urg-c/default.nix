
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-kilted-urg-c";
  version = "1.0.4001-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_c-release/archive/release/kilted/urg_c/1.0.4001-6.tar.gz";
    name = "1.0.4001-6.tar.gz";
    sha256 = "0010da14bf5c1ab5180bc3d8d14dd72bc78ac2d535343fddf3dfcbfe55702f4a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The urg_c package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

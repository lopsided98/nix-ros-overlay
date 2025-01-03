
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-urg-c";
  version = "1.0.4001-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_c-release/archive/release/rolling/urg_c/1.0.4001-5.tar.gz";
    name = "1.0.4001-5.tar.gz";
    sha256 = "94443dbf610528d751de27ae2731844f27e0b6359e06eb3c7adbbaea54f89467";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The urg_c package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

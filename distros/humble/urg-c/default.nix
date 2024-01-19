
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-urg-c";
  version = "1.0.4001-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_c-release/archive/release/humble/urg_c/1.0.4001-4.tar.gz";
    name = "1.0.4001-4.tar.gz";
    sha256 = "b1a02cbbf09cd596d6fbf16f9bd691cf600cbe1e8ee613005b48d8d914ac1bfa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The urg_c package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

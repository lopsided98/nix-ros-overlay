
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-kortex-api";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/jazzy/kortex_api/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "6a41d51635b31546fc0e1f471b1a79640fb9f7340cd0537b6b292bb84b98a117";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "KINOVA KORTEX™ API";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

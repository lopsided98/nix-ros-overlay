
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-kortex-api";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/humble/kortex_api/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "a2215b09bae7687b8d02ee71775033d219ecd15afb96b7aa519ce32574cc6768";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''kortex_api'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

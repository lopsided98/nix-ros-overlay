
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-iron-kortex-api";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/iron/kortex_api/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "ed474ba68d59c67a03a52c2ca211d0c4f8f0f78916872f7b66dc96ef2f240d02";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''kortex_api'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

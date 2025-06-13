
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-swri-dbw-interface";
  version = "3.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_dbw_interface/3.8.4-1.tar.gz";
    name = "3.8.4-1.tar.gz";
    sha256 = "f38770470a5b67f73f95dfe6c5eb0dfa3603bdce69b25b5de980a1de22966528";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides documentation on common interface conventions for
    drive-by-wire systems.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

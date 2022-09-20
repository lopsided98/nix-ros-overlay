
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-foxy-kobuki-firmware";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/stonier/kobuki_firmware-release/archive/release/foxy/kobuki_firmware/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "7b0b378354b311045a6970f362e6bd0f6d9e58bc58343573bd732845b6297ebd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Firmware blobs for kobuki.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

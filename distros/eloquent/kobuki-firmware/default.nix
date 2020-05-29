
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-eloquent-kobuki-firmware";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/stonier/kobuki_firmware-release/archive/release/eloquent/kobuki_firmware/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "c485bd3d61f7e81af7e2d73969b8d8fdc7a6e2963231d12aa3988e2b77a38a16";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Firmware blobs for kobuki.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

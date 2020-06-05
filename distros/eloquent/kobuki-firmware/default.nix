
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-eloquent-kobuki-firmware";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/stonier/kobuki_firmware-release/archive/release/eloquent/kobuki_firmware/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "741d43d789454761689a26697b4f4e96df693201e155f64100e3903e05cf9e84";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Firmware blobs for kobuki.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

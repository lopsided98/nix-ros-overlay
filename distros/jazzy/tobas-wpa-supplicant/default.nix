
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-string-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-wpa-supplicant";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_wpa_supplicant/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "a167d5793423e77b2ce20a0a6376c0801caa9e5ee52520bb164c8e04e134516d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-string-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Library for reading, editing, and exporting wpa_supplicant network configuration.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}

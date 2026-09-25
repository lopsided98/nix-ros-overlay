
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-string-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-wpa-supplicant";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_wpa_supplicant/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "905cc7b36a9678b905577de8242e4ac22e1f80a573d021f61cd313183e8a0de2";
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

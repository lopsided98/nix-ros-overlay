
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-string-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-wpa-supplicant";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_wpa_supplicant/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "3dcbd13f159c7d8f1d3f38d7d42df5c1f44b7a8452cd266d0f37cb7a96c64e21";
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


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-string-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-wpa-supplicant";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_wpa_supplicant/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "d089e2038c667d7309d759a96c13d6b085de966b52a61d81ea81f4b26afbf5e7";
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

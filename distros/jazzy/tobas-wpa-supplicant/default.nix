
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-string-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-wpa-supplicant";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_wpa_supplicant/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "79d1eff8d883c170de204883310e02a2f40a755e0800a2d4ac583f93de71e9f9";
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

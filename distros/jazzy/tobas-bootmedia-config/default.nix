
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, magic-enum, simpleini, tobas-constants, tobas-crypt, tobas-gui-common, tobas-inja-vendor, tobas-path-tools, tobas-qt-tools, tobas-ssh-authkey, tobas-udev, tobas-wpa-supplicant }:
buildRosPackage {
  pname = "ros-jazzy-tobas-bootmedia-config";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_bootmedia_config/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "c0187868f2554a375f5f13e5486b9c021d2f109e2c86497346fa8a6df6eb7900";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp magic-enum simpleini tobas-constants tobas-crypt tobas-gui-common tobas-inja-vendor tobas-path-tools tobas-qt-tools tobas-ssh-authkey tobas-udev tobas-wpa-supplicant ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Qt application for configuring Tobas boot media, networking, login, and SSH access.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}

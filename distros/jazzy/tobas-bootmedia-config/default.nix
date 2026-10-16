
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, magic-enum, simpleini, tobas-constants, tobas-crypt, tobas-gui-common, tobas-inja-vendor, tobas-path-tools, tobas-qt-tools, tobas-ssh-authkey, tobas-udev, tobas-wpa-supplicant }:
buildRosPackage {
  pname = "ros-jazzy-tobas-bootmedia-config";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_bootmedia_config/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "0dc9bcf2c50e07d456c8715381d1c8192aa9cf05b57fb4f72b474c3c45792024";
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


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libyaml, meson, openssl, pkg-config, python3, python3Packages, udev }:
buildRosPackage {
  pname = "ros-humble-libcamera";
  version = "0.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcamera-release/archive/release/humble/libcamera/0.1.0-3.tar.gz";
    name = "0.1.0-3.tar.gz";
    sha256 = "d7f25b0607c2bcd5dc08ba689cf6d5f3d71c9bb9868f4b717e2c0027b104c885";
  };

  buildType = "meson";
  buildInputs = [ meson pkg-config python3Packages.jinja2 python3Packages.ply python3Packages.pyyaml ];
  propagatedBuildInputs = [ libyaml openssl python3 udev ];
  nativeBuildInputs = [ meson ];

  meta = {
    description = "An open source camera stack and framework for Linux, Android, and ChromeOS";
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libyaml, meson, openssl, pkg-config, python3, python3Packages, pythonPackages, udev }:
buildRosPackage {
  pname = "ros-rolling-libcamera";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcamera-release/archive/release/rolling/libcamera/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "91a5d1daa2aefd70ddb0b0521c3ec842394d14a29bfdfe2a077e0d492dcdadf1";
  };

  buildType = "meson";
  buildInputs = [ meson pkg-config python3Packages.jinja2 python3Packages.ply python3Packages.pyyaml pythonPackages.pybind11 ];
  propagatedBuildInputs = [ libyaml openssl python3 udev ];
  nativeBuildInputs = [ meson ];

  meta = {
    description = "An open source camera stack and framework for Linux, Android, and ChromeOS";
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}

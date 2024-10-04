
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libyaml, meson, openssl, pkg-config, python3, python3Packages, pythonPackages, udev }:
buildRosPackage {
  pname = "ros-jazzy-libcamera";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcamera-release/archive/release/jazzy/libcamera/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "25f64e4e7a09966f356496e7dc3e08f9be76d9d37ec8a572dd312581f24b5858";
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

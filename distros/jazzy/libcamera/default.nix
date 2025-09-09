
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, libyaml, meson, openssl, pkg-config, python3, python3Packages, udev }:
buildRosPackage {
  pname = "ros-jazzy-libcamera";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcamera-release/archive/release/jazzy/libcamera/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "e670a5b5e3acacde2cff606f81b39dab0f39deb0004445ed33a1ae97491bb7b8";
  };

  buildType = "meson";
  buildInputs = [ git meson pkg-config python3Packages.jinja2 python3Packages.ply python3Packages.pybind11 python3Packages.pyyaml ];
  propagatedBuildInputs = [ libyaml openssl python3 udev ];
  nativeBuildInputs = [ git meson pkg-config ];

  meta = {
    description = "An open source camera stack and framework for Linux, Android, and ChromeOS";
    license = with lib.licenses; [ asl20 "BSD-2-Clause" bsd3 "GPL-2.0-or-later" "LGPL-2.1-or-later" ];
  };
}

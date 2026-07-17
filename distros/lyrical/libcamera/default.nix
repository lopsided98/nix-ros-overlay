
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, libyaml, libyuv, meson, openssl, pkg-config, python3, python3Packages, udev }:
buildRosPackage {
  pname = "ros-lyrical-libcamera";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcamera-release/archive/release/lyrical/libcamera/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "59af46112ede4b75d7c7e805c9a5bc4a7d1a1608abe3312c6332acfb992a6735";
  };

  buildType = "meson";
  buildInputs = [ git meson pkg-config python3Packages.jinja2 python3Packages.ply python3Packages.pybind11 python3Packages.pyyaml ];
  propagatedBuildInputs = [ libyaml libyuv openssl python3 udev ];
  nativeBuildInputs = [ git meson pkg-config ];

  meta = {
    description = "An open source camera stack and framework for Linux, Android, and ChromeOS";
    license = with lib.licenses; [ asl20 "BSD-2-Clause" bsd3 "GPL-2.0-or-later" "LGPL-2.1-or-later" ];
  };
}

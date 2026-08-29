
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, libyaml, libyuv, meson, openssl, pkg-config, python3, python3Packages, udev }:
buildRosPackage {
  pname = "ros-rolling-libcamera";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcamera-release/archive/release/rolling/libcamera/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "fe6317c2c90f7f3c179d81d81cee0fa18e6312f635a26bb8ffadd52adb3ddb03";
  };

  buildType = "meson";
  buildInputs = [ git meson pkg-config python3Packages.jinja2 python3Packages.ply python3Packages.pybind11 python3Packages.pyyaml ];
  propagatedBuildInputs = [ libyaml libyuv openssl python3 udev ];
  nativeBuildInputs = [ git meson pkg-config ];

  meta = {
    description = "An open source camera stack and framework for Linux, Android, and ChromeOS";
    license = with lib.licenses; [ asl20 bsd2 bsd3 gpl2Plus lgpl21Plus ];
  };
}

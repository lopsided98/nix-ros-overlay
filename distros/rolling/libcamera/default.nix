
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libyaml, meson, openssl, pkg-config, python3, python3Packages, udev }:
buildRosPackage {
  pname = "ros-rolling-libcamera";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcamera-release/archive/release/rolling/libcamera/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "1ad70b2ba2e938443c408e2d678d0e70b55c849d8270706196774b91574fc7d0";
  };

  buildType = "meson";
  buildInputs = [ meson pkg-config python3Packages.jinja2 python3Packages.ply python3Packages.pybind11 python3Packages.pyyaml ];
  propagatedBuildInputs = [ libyaml openssl python3 udev ];
  nativeBuildInputs = [ meson ];

  meta = {
    description = "An open source camera stack and framework for Linux, Android, and ChromeOS";
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}

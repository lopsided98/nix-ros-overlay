
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, libyaml, meson, openssl, pkg-config, python3, python3Packages, udev }:
buildRosPackage {
  pname = "ros-jazzy-libcamera";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcamera-release/archive/release/jazzy/libcamera/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "cb090f65d95ff3ae25409e4a6586ffab86e8aa334bcb1422e79900ff2c730425";
  };

  buildType = "meson";
  buildInputs = [ git meson pkg-config python3Packages.jinja2 python3Packages.ply python3Packages.pybind11 python3Packages.pyyaml ];
  propagatedBuildInputs = [ libyaml openssl python3 udev ];
  nativeBuildInputs = [ git meson pkg-config ];

  meta = {
    description = "An open source camera stack and framework for Linux, Android, and ChromeOS";
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}

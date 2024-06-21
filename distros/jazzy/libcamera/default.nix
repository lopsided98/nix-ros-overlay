
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libyaml, meson, openssl, pkg-config, python3, python3Packages, pythonPackages, udev }:
buildRosPackage {
  pname = "ros-jazzy-libcamera";
  version = "0.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcamera-release/archive/release/jazzy/libcamera/0.3.0-3.tar.gz";
    name = "0.3.0-3.tar.gz";
    sha256 = "3da114d42cb483228994e808a50a71da1aa3c35affb119d423d9d34fb23d5935";
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

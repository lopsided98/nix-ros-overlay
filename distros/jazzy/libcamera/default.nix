
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libyaml, meson, openssl, pkg-config, python3, python3Packages, pythonPackages, udev }:
buildRosPackage {
  pname = "ros-jazzy-libcamera";
  version = "0.3.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcamera-release/archive/release/jazzy/libcamera/0.3.1-4.tar.gz";
    name = "0.3.1-4.tar.gz";
    sha256 = "eb5546c1316a0fb7bcbf1c709e4a0d7be780132faac5e90eae1984364e179d15";
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


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libyaml, meson, openssl, pkg-config, python3Packages, udev }:
buildRosPackage {
  pname = "ros-humble-libcamera";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcamera-release/archive/release/humble/libcamera/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "3dc9d9d9218122416e95568c8e9fded1f6c17735c767c1eef2e6f7661bcd1f10";
  };

  buildType = "meson";
  buildInputs = [ meson pkg-config python3Packages.jinja2 python3Packages.ply python3Packages.pyyaml ];
  propagatedBuildInputs = [ libyaml openssl udev ];
  nativeBuildInputs = [ meson ];

  meta = {
    description = ''An open source camera stack and framework for Linux, Android, and ChromeOS'';
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}

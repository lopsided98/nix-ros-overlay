
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libyaml, meson, openssl, pkg-config, python3Packages, udev }:
buildRosPackage {
  pname = "ros-humble-libcamera";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcamera-release/archive/release/humble/libcamera/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "bc1fd57c844650ea25b854739a93b02797c7305aea633d6e2ef696178bf0996b";
  };

  buildType = "meson";
  buildInputs = [ meson pkg-config python3Packages.jinja2 python3Packages.ply python3Packages.pyyaml ];
  propagatedBuildInputs = [ libyaml openssl udev ];
  nativeBuildInputs = [ meson ];

  meta = {
    description = "An open source camera stack and framework for Linux, Android, and ChromeOS";
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}

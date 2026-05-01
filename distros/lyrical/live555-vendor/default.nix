
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, openssl }:
buildRosPackage {
  pname = "ros-lyrical-live555-vendor";
  version = "0.20251106.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/live555_vendor-release/archive/release/lyrical/live555_vendor/0.20251106.0-3.tar.gz";
    name = "0.20251106.0-3.tar.gz";
    sha256 = "590c9d74dc820d5480e2a063d980476f65c9b8a40be0c0d437cdddf2e90d05bb";
  };

  buildType = "cmake";
  buildInputs = [ cmake openssl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "multimedia RTSP streaming library";
    license = with lib.licenses; [ "LGPL-3.0-or-later" "BSD-1-Clause" ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, openssl }:
buildRosPackage {
  pname = "ros-rolling-live555-vendor";
  version = "0.20251106.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/live555_vendor-release/archive/release/rolling/live555_vendor/0.20251106.0-2.tar.gz";
    name = "0.20251106.0-2.tar.gz";
    sha256 = "687ca83440f914de1536c0d0b957bfb91c2dda5716100c9c943a3c3602494e80";
  };

  buildType = "cmake";
  buildInputs = [ cmake openssl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "multimedia RTSP streaming library";
    license = with lib.licenses; [ "LGPL-3.0-or-later" "BSD-1-Clause" ];
  };
}

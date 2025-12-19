
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, openssl }:
buildRosPackage {
  pname = "ros-rolling-live555-vendor";
  version = "0.20251106.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/live555_vendor-release/archive/release/rolling/live555_vendor/0.20251106.0-1.tar.gz";
    name = "0.20251106.0-1.tar.gz";
    sha256 = "9b1185c7942697343ba0207056c82decd285799d167ce129ad8fde3416a9265b";
  };

  buildType = "cmake";
  buildInputs = [ cmake openssl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "multimedia RTSP streaming library";
    license = with lib.licenses; [ "LGPL-3.0-or-later" "BSD-1-Clause" ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, openssl }:
buildRosPackage {
  pname = "ros-jazzy-live555-vendor";
  version = "0.20250917.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/live555_vendor-release/archive/release/jazzy/live555_vendor/0.20250917.0-1.tar.gz";
    name = "0.20250917.0-1.tar.gz";
    sha256 = "852dab7aff12758db81159947e2099a6a444c6da827db91a9ba32c93b7174593";
  };

  buildType = "cmake";
  buildInputs = [ cmake openssl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "multimedia RTSP streaming library";
    license = with lib.licenses; [ "LGPL-3.0-or-later" "BSD-1-Clause" ];
  };
}

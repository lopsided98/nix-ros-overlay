
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, unzip }:
buildRosPackage {
  pname = "ros-humble-clips-vendor";
  version = "6.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_vendor-release/archive/release/humble/clips_vendor/6.4.4-1.tar.gz";
    name = "6.4.4-1.tar.gz";
    sha256 = "c080df67910cb9a49cbc20a31e8c51dae40a347639b0d65bc6d9dee32da896b3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-vendor-package unzip ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vendor package for the CLIPS rule based production system";
    license = with lib.licenses; [ mit0 ];
  };
}

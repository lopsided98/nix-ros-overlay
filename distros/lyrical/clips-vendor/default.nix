
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, unzip }:
buildRosPackage {
  pname = "ros-lyrical-clips-vendor";
  version = "6.4.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_vendor-release/archive/release/lyrical/clips_vendor/6.4.3-3.tar.gz";
    name = "6.4.3-3.tar.gz";
    sha256 = "288a5dbed62d25bbf0db95c6f6562b6854c6e4850e359f1421399a4c7ea3a450";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-vendor-package unzip ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vendor package for the CLIPS rule based production system";
    license = with lib.licenses; [ "MIT-0" ];
  };
}

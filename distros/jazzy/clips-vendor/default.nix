
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, unzip }:
buildRosPackage {
  pname = "ros-jazzy-clips-vendor";
  version = "6.4.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_vendor-release/archive/release/jazzy/clips_vendor/6.4.3-2.tar.gz";
    name = "6.4.3-2.tar.gz";
    sha256 = "0f3fe94af4f4137581c500d5d86dd4d580b7794ce494335c45ae0991d7b4b8b9";
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

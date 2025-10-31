
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-foxglove-sdk-vendor";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/jlack1987/foxglove_sdk_vendor-release/archive/release/jazzy/foxglove_sdk_vendor/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "61ff396ecdd09e6b9edcd2b48ccbbebb590f858f53cbce5d664724000ce56b46";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vendor package that fetches prebuilt Foxglove SDK archives and exposes the headers
    and libfoxglove.a static library to ROS 2 workspaces.";
    license = with lib.licenses; [ mit ];
  };
}

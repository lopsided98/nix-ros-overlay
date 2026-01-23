
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-foxglove-sdk-vendor";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_sdk_vendor-release/archive/release/rolling/foxglove_sdk_vendor/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "b1e1e3cb848d4dd4c20a5de25604fbf7c9916994d251541edbc2a9530bf8ff5b";
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

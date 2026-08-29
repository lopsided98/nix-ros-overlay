
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-foxglove-sdk-vendor";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_sdk_vendor-release/archive/release/rolling/foxglove_sdk_vendor/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "92e528d1d6d8df5572e61c6f19fa643089d70ace4b08d88f193ee959542a3a14";
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

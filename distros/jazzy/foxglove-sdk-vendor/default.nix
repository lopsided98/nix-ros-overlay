
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-foxglove-sdk-vendor";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_sdk_vendor-release/archive/release/jazzy/foxglove_sdk_vendor/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "813ab9fdcea55c7975bee070d41be745560f2fb8fb54ca5a6fab88df0ba5c178";
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

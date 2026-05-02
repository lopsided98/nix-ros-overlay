
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-foxglove-sdk-vendor";
  version = "0.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_sdk_vendor-release/archive/release/rolling/foxglove_sdk_vendor/0.2.0-3.tar.gz";
    name = "0.2.0-3.tar.gz";
    sha256 = "543a7b95069c872a414cf794bd36bd377c4ae4adc8a19b16fd9568baed4599f3";
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

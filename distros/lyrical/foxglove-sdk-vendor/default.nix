
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-foxglove-sdk-vendor";
  version = "0.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_sdk_vendor-release/archive/release/lyrical/foxglove_sdk_vendor/0.2.0-4.tar.gz";
    name = "0.2.0-4.tar.gz";
    sha256 = "4511ba9b7e3f3520606f5580ef2dcf2ea24fee3ea64274671906ea85bab7d247";
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

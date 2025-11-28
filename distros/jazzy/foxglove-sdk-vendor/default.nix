
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-foxglove-sdk-vendor";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/jlack1987/foxglove_sdk_vendor-release/archive/release/jazzy/foxglove_sdk_vendor/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "cf851a0eb97970a7e05912026243191cf360425ed48c7847e90bbab1af5205bf";
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


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dataspeed-can-msg-filters, dataspeed-can-msgs, dataspeed-can-tools, dataspeed-can-usb }:
buildRosPackage {
  pname = "ros-jazzy-dataspeed-can";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/jazzy/dataspeed_can/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "c561f5f9a39b67e7281e23431d80aeff3dc4d96cc8998b1515a210ea0761b5c1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dataspeed-can-msg-filters dataspeed-can-msgs dataspeed-can-tools dataspeed-can-usb ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CAN bus tools using Dataspeed hardware";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

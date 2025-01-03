
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dataspeed-can-msg-filters, dataspeed-can-msgs, dataspeed-can-tools, dataspeed-can-usb }:
buildRosPackage {
  pname = "ros-jazzy-dataspeed-can";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/jazzy/dataspeed_can/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "eb7435fe89ab65a494db965a62c5f734524031c4fad84e043bde927261a5ae5c";
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

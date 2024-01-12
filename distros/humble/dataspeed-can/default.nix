
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dataspeed-can-msg-filters, dataspeed-can-usb }:
buildRosPackage {
  pname = "ros-humble-dataspeed-can";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/humble/dataspeed_can/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "491b3e350beac36f69d748e8621fea0bd2593f157e8b180f9b424d6d93c528b0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dataspeed-can-msg-filters dataspeed-can-usb ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CAN bus tools using Dataspeed hardware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

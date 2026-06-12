
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dataspeed-can-msg-filters, dataspeed-can-msgs, dataspeed-can-tools, dataspeed-can-usb }:
buildRosPackage {
  pname = "ros-lyrical-dataspeed-can";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/lyrical/dataspeed_can/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "da3618d1f9fcf2edeb5d615569f2ec036e508fc044e1c757eff866d56397e3b4";
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

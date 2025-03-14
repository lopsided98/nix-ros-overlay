
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dataspeed-can-msg-filters, dataspeed-can-msgs, dataspeed-can-tools, dataspeed-can-usb }:
buildRosPackage {
  pname = "ros-jazzy-dataspeed-can";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/jazzy/dataspeed_can/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "a7f0c1216328694fe55c3f49ffcdb7bf2edbc00a740660d2f0cafeca365559e0";
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

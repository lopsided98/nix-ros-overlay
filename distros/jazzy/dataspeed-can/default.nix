
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dataspeed-can-msg-filters, dataspeed-can-msgs, dataspeed-can-tools, dataspeed-can-usb }:
buildRosPackage {
  pname = "ros-jazzy-dataspeed-can";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/jazzy/dataspeed_can/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "32a5ba3c21c4b31cda5414bf69dd14d538d4903ec7b5a1b9841e9be7c2f32028";
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

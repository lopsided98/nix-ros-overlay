
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dataspeed-can-msg-filters, dataspeed-can-usb }:
buildRosPackage {
  pname = "ros-foxy-dataspeed-can";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/foxy/dataspeed_can/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "4b8d8aa8a6d9fe9be2390e844e49b3f136581d14eaf566a91286d1a115b5cdca";
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

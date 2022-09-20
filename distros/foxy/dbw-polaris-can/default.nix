
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, can-msgs, dataspeed-can-msg-filters, dataspeed-can-usb, dataspeed-dbw-common, dataspeed-dbw-gateway, dataspeed-ulc-can, dbw-polaris-description, dbw-polaris-msgs, geometry-msgs, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-dbw-polaris-can";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/foxy/dbw_polaris_can/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "a5aecf5f4cb35d2ed2995000b8d51b7a7893151a8dfebe548de7b1c7b82487c9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake dataspeed-can-msg-filters ];
  propagatedBuildInputs = [ can-msgs dataspeed-can-usb dataspeed-dbw-common dataspeed-dbw-gateway dataspeed-ulc-can dbw-polaris-description dbw-polaris-msgs geometry-msgs rclcpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Polaris GEM/Ranger/RZR DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

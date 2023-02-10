
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, dataspeed-can-msg-filters, dataspeed-can-usb, dataspeed-dbw-common, dataspeed-dbw-gateway, dataspeed-ulc-can, dbw-ford-description, dbw-ford-msgs, geometry-msgs, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dbw-ford-can";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_ford_can/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "662d843d1e553401d0304f9ae4bfe1825a12fe73e21d5b42b37644907270081b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake dataspeed-can-msg-filters ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ can-msgs dataspeed-can-usb dataspeed-dbw-common dataspeed-dbw-gateway dataspeed-ulc-can dbw-ford-description dbw-ford-msgs geometry-msgs rclcpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Ford DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

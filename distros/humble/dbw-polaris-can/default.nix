
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, dataspeed-can-msg-filters, dataspeed-can-usb, dataspeed-dbw-common, dataspeed-ulc-can, dbw-polaris-description, dbw-polaris-msgs, geometry-msgs, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dbw-polaris-can";
  version = "2.1.10-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_polaris_can/2.1.10-1.tar.gz";
    name = "2.1.10-1.tar.gz";
    sha256 = "b9b7a9f44e3d9a06f8c5267bd12010c324f73e2534a644f131a6bdc0caf30ecd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake dataspeed-can-msg-filters ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ can-msgs dataspeed-can-usb dataspeed-dbw-common dataspeed-ulc-can dbw-polaris-description dbw-polaris-msgs geometry-msgs rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Polaris GEM/Ranger/RZR DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, dataspeed-can-msg-filters, dataspeed-can-usb, dataspeed-dbw-common, dataspeed-ulc-can, dbw-ford-description, dbw-ford-msgs, geometry-msgs, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dbw-ford-can";
  version = "2.1.16-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_ford_can/2.1.16-1.tar.gz";
    name = "2.1.16-1.tar.gz";
    sha256 = "ccd0e19150a4e9703b50a94e94a72230100c75e2cb1f100f524627b09de1dc44";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake dataspeed-can-msg-filters ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ can-msgs dataspeed-can-usb dataspeed-dbw-common dataspeed-ulc-can dbw-ford-description dbw-ford-msgs geometry-msgs rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Drive-by-wire interface to the Dataspeed Inc. Ford DBW kit";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

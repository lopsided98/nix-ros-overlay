
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, dataspeed-can-msg-filters, dataspeed-can-usb, dataspeed-dbw-common, dataspeed-ulc-can, dbw-fca-description, dbw-fca-msgs, geometry-msgs, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dbw-fca-can";
  version = "2.1.10-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_fca_can/2.1.10-1.tar.gz";
    name = "2.1.10-1.tar.gz";
    sha256 = "3a2b3925cf5da1597a6226ebf6bc7bf63d124a73ff8f2c9ed0e01bd5469d56ec";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake dataspeed-can-msg-filters ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ can-msgs dataspeed-can-usb dataspeed-dbw-common dataspeed-ulc-can dbw-fca-description dbw-fca-msgs geometry-msgs rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Drive-by-wire interface to the Dataspeed Inc. Chrysler Pacifica DBW kit";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

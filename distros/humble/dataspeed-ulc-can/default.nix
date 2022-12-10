
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, dataspeed-dbw-common, dataspeed-ulc-msgs, geometry-msgs, rclcpp, rclpy, ros-testing, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dataspeed-ulc-can";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dataspeed_ulc_can/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "e71fda64b95b74c8fc9f38875ada6203f1fe1e9d954218bfa69cb9389498bd4a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ros-testing ];
  propagatedBuildInputs = [ can-msgs dataspeed-dbw-common dataspeed-ulc-msgs geometry-msgs rclcpp rclpy std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package to translate ROS messages to and from CAN messages to interact with the Universal Lat/Lon Controller (ULC) firmware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

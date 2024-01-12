
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, dataspeed-dbw-common, dataspeed-ulc-msgs, geometry-msgs, rclcpp, rclpy, ros-testing, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dataspeed-ulc-can";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dataspeed_ulc_can/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "b1563c9998bdabb57d54a3243950ee69b60c6406ee7a95549ab287c690bbff57";
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

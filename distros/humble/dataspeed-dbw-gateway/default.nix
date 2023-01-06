
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, dataspeed-dbw-common, dataspeed-dbw-msgs, dbw-fca-msgs, dbw-ford-msgs, dbw-polaris-msgs, diagnostic-msgs, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-dataspeed-dbw-gateway";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dataspeed_dbw_gateway/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "e3ba55b2f45417cea4a2f26ce7d7b8b616b190249faf4970f0bac17698792d05";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ dataspeed-dbw-common dataspeed-dbw-msgs dbw-fca-msgs dbw-ford-msgs dbw-polaris-msgs diagnostic-msgs rclcpp rclcpp-components rosidl-default-runtime sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''A multiplexer and demultiplexer between common dbw messages and platform specific dbw messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

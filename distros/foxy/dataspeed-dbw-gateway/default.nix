
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, dataspeed-dbw-common, dataspeed-dbw-msgs, dbw-fca-msgs, dbw-ford-msgs, dbw-polaris-msgs, diagnostic-msgs, rclcpp, rclcpp-components, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-dataspeed-dbw-gateway";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/foxy/dataspeed_dbw_gateway/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "9962053b7b5668a12c2469d3c5a2cf025091f20f0121bc15bff9e5113e0d4a8e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ dataspeed-dbw-common dataspeed-dbw-msgs dbw-fca-msgs dbw-ford-msgs dbw-polaris-msgs diagnostic-msgs rclcpp rclcpp-components ros-environment rosidl-default-runtime sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''A multiplexer and demultiplexer between common dbw messages and platform specific dbw messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

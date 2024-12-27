
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, dataspeed-can-msgs, rclcpp, rosbag2-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dataspeed-can-tools";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/humble/dataspeed_can_tools/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "e3e02e8eb4ef3c95ad9c068dedf91b79eb7338024fd8e353eb6f5087477483e9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ can-msgs dataspeed-can-msgs rclcpp rosbag2-cpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CAN bus introspection";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

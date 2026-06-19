
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, dataspeed-can-msgs, rclcpp, rosbag2-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-dataspeed-can-tools";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/jazzy/dataspeed_can_tools/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "343071f340ff8e85f9ec12576fad7ce41241c1579676e367f738b56e892d7d19";
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

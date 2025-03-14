
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, dataspeed-can-msgs, rclcpp, rosbag2-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-dataspeed-can-tools";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/jazzy/dataspeed_can_tools/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "6dfbe4679e2fbcb32797ade10a75d5d541e2cf92f315f0214814923effaa678c";
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

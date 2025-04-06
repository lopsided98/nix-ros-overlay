
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, dataspeed-can-msgs, rclcpp, rosbag2-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dataspeed-can-tools";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/humble/dataspeed_can_tools/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "f24d5db650e6b00e8d4df826bed304f1db742114daffe27d51f8262b0efd51a3";
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

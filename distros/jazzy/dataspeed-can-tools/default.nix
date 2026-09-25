
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, dataspeed-can-msgs, rclcpp, rosbag2-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-dataspeed-can-tools";
  version = "2.0.8-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/jazzy/dataspeed_can_tools/2.0.8-1.tar.gz";
    name = "2.0.8-1.tar.gz";
    sha256 = "8de7cab9e5a1ad6c7b341f18c0f4e58c73c4bb47884f1f6d423fa685fbed40ee";
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

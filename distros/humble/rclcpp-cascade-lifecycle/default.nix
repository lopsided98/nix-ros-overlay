
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cascade-lifecycle-msgs, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-humble-rclcpp-cascade-lifecycle";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/fmrico/cascade_lifecycle-release/archive/release/humble/rclcpp_cascade_lifecycle/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "0cd86beddba6347d00b0c08dd3bb551bb3d381d645fb8b00c31b9a51df7b425d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cascade-lifecycle-msgs lifecycle-msgs rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a mechanism to make trees of lifecycle nodes to propagate state changes'';
    license = with lib.licenses; [ asl20 ];
  };
}

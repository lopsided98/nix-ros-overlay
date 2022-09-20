
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cascade-lifecycle-msgs, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-foxy-rclcpp-cascade-lifecycle";
  version = "0.0.8-r1";

  src = fetchurl {
    url = "https://github.com/fmrico/cascade_lifecycle-release/archive/release/foxy/rclcpp_cascade_lifecycle/0.0.8-1.tar.gz";
    name = "0.0.8-1.tar.gz";
    sha256 = "9cbd26130896e20268e8257b232fc9ea9d39b7978445f27d9746aa2fb7dd4aa5";
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

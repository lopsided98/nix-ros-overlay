
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cascade-lifecycle-msgs, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-galactic-rclcpp-cascade-lifecycle";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/fmrico/cascade_lifecycle-release/archive/release/galactic/rclcpp_cascade_lifecycle/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "ac646bf6b93600f497c5cec58ca95ce33c60ea771245c9f19670cfe4f28b2329";
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

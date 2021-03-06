
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-self-test";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/foxy/self_test/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "a65c4f1449ab6dfecfe242367fe13ec976c74487b279ad1550c971ea572c4ac8";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''self_test'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

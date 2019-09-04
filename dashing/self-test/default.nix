
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-cmake-gtest, diagnostic-updater, rclcpp, diagnostic-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-self-test";
  version = "2.0.0-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/diagnostics-release/archive/release/dashing/self_test/2.0.0-1.tar.gz;
    sha256 = "827f2997ec27db202f57959de3dd2cf0616d6644af1cf234662b589bd149bf87";
  };

  buildType = "ament_cmake";
  buildInputs = [ diagnostic-msgs diagnostic-updater rclcpp ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-updater diagnostic-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''self_test'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

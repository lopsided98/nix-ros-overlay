
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, ament-lint-common, ament-cmake, ament-lint-auto, diagnostic-updater, rclcpp, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-self-test";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/dashing/self_test/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "827f2997ec27db202f57959de3dd2cf0616d6644af1cf234662b589bd149bf87";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp diagnostic-msgs diagnostic-updater ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp diagnostic-msgs diagnostic-updater ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''self_test'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

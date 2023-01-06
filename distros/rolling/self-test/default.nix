
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-self-test";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/rolling/self_test/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "6771598989986442c5eca165a5b09ca8286ee44447fe99489d828f43f41f6713";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''self_test'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, rclcpp-lifecycle, ament-lint-common, ament-cmake-gmock, launch-ros, launch-testing, ament-cmake-gtest, launch, ament-cmake, rcutils, rclcpp, rcl-interfaces, std-msgs, ament-lint-auto, rclcpp-components }:
buildRosPackage rec {
  pname = "ros-dashing-fmi-adapter";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmi_adapter_ros2-release/archive/release/dashing/fmi_adapter/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "b23081dda39b15640af630873356e1fd132983f9e710a44188357899768e98fb";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-lifecycle rclcpp rcl-interfaces std-msgs rclcpp-components ];
  checkInputs = [ ament-cmake-pytest ament-lint-common ament-cmake-gmock launch-testing ament-cmake-gtest ament-lint-auto rcutils ];
  propagatedBuildInputs = [ rclcpp-lifecycle launch-ros launch rclcpp rcl-interfaces std-msgs rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wraps FMUs for co-simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}

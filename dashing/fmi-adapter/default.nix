
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp-lifecycle, rcutils, launch, rclcpp-components, std-msgs, launch-testing, launch-ros, ament-lint-common, ament-cmake, ament-lint-auto, rcl-interfaces, ament-cmake-pytest, ament-cmake-gmock, rclcpp, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-fmi-adapter";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmi_adapter_ros2-release/archive/release/dashing/fmi_adapter/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "b23081dda39b15640af630873356e1fd132983f9e710a44188357899768e98fb";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-lifecycle rclcpp-components std-msgs rcl-interfaces rclcpp ];
  checkInputs = [ rcutils launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-cmake-gmock ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp-lifecycle launch rclcpp-components std-msgs launch-ros rcl-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wraps FMUs for co-simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-cmake-ros, autoware-adapi-specs, autoware-adapi-v1-msgs, autoware-cmake, autoware-common-msgs, autoware-component-interface-specs, autoware-system-msgs, autoware-vehicle-msgs, builtin-interfaces, class-loader, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-command-gate";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_command_gate/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "b90487b8eb761a615e03bcbc5a4415708bba1ae23c3c81a5effc453ada706ab2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros class-loader ];
  propagatedBuildInputs = [ autoware-adapi-specs autoware-adapi-v1-msgs autoware-common-msgs autoware-component-interface-specs autoware-system-msgs autoware-vehicle-msgs builtin-interfaces rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "Simple gateway that maps operation mode service calls to mode state and gear commands.";
    license = with lib.licenses; [ asl20 ];
  };
}

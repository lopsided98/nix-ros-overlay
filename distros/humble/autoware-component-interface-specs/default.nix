
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-control-msgs, autoware-lint-common, autoware-localization-msgs, autoware-map-msgs, autoware-perception-msgs, autoware-planning-msgs, autoware-system-msgs, autoware-vehicle-msgs, nav-msgs, rcl, rclcpp, rosidl-runtime-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-component-interface-specs";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_component_interface_specs/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "b5bacfdedfb8f929b97d674c12a7891ef6bffac9b5c5141812e8da1afe0499df";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-control-msgs autoware-localization-msgs autoware-map-msgs autoware-perception-msgs autoware-planning-msgs autoware-system-msgs autoware-vehicle-msgs nav-msgs rcl rclcpp rosidl-runtime-cpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_component_interface_specs package";
    license = with lib.licenses; [ asl20 ];
  };
}

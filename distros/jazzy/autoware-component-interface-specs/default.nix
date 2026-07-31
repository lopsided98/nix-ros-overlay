
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-control-msgs, autoware-lint-common, autoware-localization-msgs, autoware-map-msgs, autoware-perception-msgs, autoware-planning-msgs, autoware-system-msgs, autoware-vehicle-msgs, nav-msgs, rcl, rclcpp, rosidl-runtime-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-component-interface-specs";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_component_interface_specs/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "9c464d539da08bfa224ff5bfd5ea954f249a4d8b06e06d49f85ec9d7e8225947";
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

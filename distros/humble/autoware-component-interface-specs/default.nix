
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-control-msgs, autoware-lint-common, autoware-localization-msgs, autoware-map-msgs, autoware-perception-msgs, autoware-planning-msgs, autoware-system-msgs, autoware-vehicle-msgs, nav-msgs, rcl, rclcpp, rosidl-runtime-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-component-interface-specs";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_component_interface_specs/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "bf88b711a4953cc2f10944b4e7a715a214fb2e0958db56c0992f711048ebf053";
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

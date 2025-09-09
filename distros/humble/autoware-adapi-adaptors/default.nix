
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-adapi-specs, autoware-adapi-v1-msgs, autoware-cmake, autoware-component-interface-specs, autoware-lint-common, autoware-map-height-fitter, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-adapi-adaptors";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_adapi_adaptors/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "88c5afbe6eb6a1c04879df0250d9d2fee234b083f3c55d6b8de941e2b5201827";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-specs autoware-adapi-v1-msgs autoware-component-interface-specs autoware-map-height-fitter rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The adapi_adaptors package";
    license = with lib.licenses; [ asl20 ];
  };
}

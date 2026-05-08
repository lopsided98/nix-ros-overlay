
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-adapi-specs, autoware-adapi-v1-msgs, autoware-cmake, autoware-component-interface-specs, autoware-lint-common, autoware-map-height-fitter, autoware-qos-utils, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-autoware-adapi-adaptors";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_adapi_adaptors/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "58f08b9a7aa864c3df9e2089459d4a70dd79092410910e1453d0dbd9c4475fdd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-specs autoware-adapi-v1-msgs autoware-component-interface-specs autoware-map-height-fitter autoware-qos-utils rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The adapi_adaptors package";
    license = with lib.licenses; [ asl20 ];
  };
}

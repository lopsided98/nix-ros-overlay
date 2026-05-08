
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-adapi-specs, autoware-adapi-v1-msgs, autoware-cmake, autoware-component-interface-specs, autoware-lint-common, autoware-map-height-fitter, autoware-qos-utils, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-adapi-adaptors";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_adapi_adaptors/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "678cbd69f3f4fb30c9949a5a37e32b8763bf37e1fbe931e79e736863aa07c57a";
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


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-adapi-specs, autoware-adapi-v1-msgs, autoware-cmake, autoware-component-interface-specs, autoware-lint-common, autoware-map-height-fitter, autoware-qos-utils, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-adapi-adaptors";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_adapi_adaptors/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "a4ae30cdf0935f72e508a9178546f353e752b080932167c5e83c19d59ac391c1";
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


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-adapi-specs, autoware-adapi-v1-msgs, autoware-adapi-version-msgs, autoware-cmake, autoware-component-interface-specs, autoware-geography-utils, autoware-global-parameter-loader, autoware-lint-common, autoware-localization-msgs, autoware-motion-utils, autoware-planning-msgs, autoware-qos-utils, autoware-system-msgs, autoware-utils-rclcpp, autoware-vehicle-info-utils, autoware-vehicle-msgs, diagnostic-updater, geographic-msgs, launch-testing, launch-testing-ament-cmake, nav-msgs, python3Packages, rclcpp, rclcpp-components, shape-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-autoware-default-adapi";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_default_adapi/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "1cfbf6f821c7123e46b17be7d82b11fb90213942d6d2bf42ce985164796439fd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ autoware-adapi-specs autoware-adapi-v1-msgs autoware-adapi-version-msgs autoware-component-interface-specs autoware-geography-utils autoware-global-parameter-loader autoware-localization-msgs autoware-motion-utils autoware-planning-msgs autoware-qos-utils autoware-system-msgs autoware-utils-rclcpp autoware-vehicle-info-utils autoware-vehicle-msgs diagnostic-updater geographic-msgs nav-msgs python3Packages.flask rclcpp rclcpp-components shape-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_default_adapi package";
    license = with lib.licenses; [ asl20 ];
  };
}

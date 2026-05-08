
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-adapi-specs, autoware-adapi-v1-msgs, autoware-adapi-version-msgs, autoware-cmake, autoware-component-interface-specs, autoware-geography-utils, autoware-global-parameter-loader, autoware-lint-common, autoware-localization-msgs, autoware-motion-utils, autoware-planning-msgs, autoware-qos-utils, autoware-system-msgs, autoware-utils-rclcpp, autoware-vehicle-info-utils, autoware-vehicle-msgs, diagnostic-updater, geographic-msgs, launch-testing, launch-testing-ament-cmake, nav-msgs, python3Packages, rclcpp, rclcpp-components, shape-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-autoware-default-adapi";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_default_adapi/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "05420264124f89572a4e928ee488cae10a5dc69b26d5c73be8ee0e8daa98e549";
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

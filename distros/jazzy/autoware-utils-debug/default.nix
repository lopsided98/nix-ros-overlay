
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-debug-msgs, autoware-internal-msgs, autoware-lint-common, autoware-utils-system, diagnostic-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-autoware-utils-debug";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/jazzy/autoware_utils_debug/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "7a13d169cc6f3542816db0384eafb8ea4f3fd4ad20a89fd75b9dbb98e8a3ecd3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-internal-debug-msgs autoware-internal-msgs autoware-utils-system diagnostic-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_debug package";
    license = with lib.licenses; [ asl20 ];
  };
}

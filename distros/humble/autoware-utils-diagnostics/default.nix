
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, diagnostic-msgs, diagnostic-updater, rclcpp }:
buildRosPackage {
  pname = "ros-humble-autoware-utils-diagnostics";
  version = "1.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/humble/autoware_utils_diagnostics/1.5.0-2.tar.gz";
    name = "1.5.0-2.tar.gz";
    sha256 = "ab87edb394478ac8b80136a3a9d0382bb8523db48c14c84aefb1eaf38e2c17ab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_diagnostics package";
    license = with lib.licenses; [ asl20 ];
  };
}

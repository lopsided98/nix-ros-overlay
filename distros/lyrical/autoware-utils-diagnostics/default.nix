
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, diagnostic-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-autoware-utils-diagnostics";
  version = "1.4.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/lyrical/autoware_utils_diagnostics/1.4.2-4.tar.gz";
    name = "1.4.2-4.tar.gz";
    sha256 = "2a89a212a232b09e3627375cf917d7a7150f0f29bbdf4e9d17ca4fc9ef121811";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_diagnostics package";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-internal-planning-msgs, autoware-interpolation, autoware-lint-common, autoware-planning-msgs, autoware-utils-geometry, autoware-utils-math, autoware-utils-system, autoware-utils-visualization, autoware-vehicle-msgs, builtin-interfaces, geometry-msgs, rclcpp, tf2, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-motion-utils";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_motion_utils/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "7bb666f6a16ec614d09bc8be9f04242fc30eb61de70ba8e0fed696d7161467e4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-internal-planning-msgs autoware-interpolation autoware-planning-msgs autoware-utils-geometry autoware-utils-math autoware-utils-system autoware-utils-visualization autoware-vehicle-msgs builtin-interfaces geometry-msgs rclcpp tf2 tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_motion_utils package";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-ros, ament-lint-auto, ament-lint-common, control-msgs, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface, hardware-interface-testing, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcpputils, realtime-tools, ros2-control-test-assets, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-ffw-swerve-drive-controller";
  version = "1.1.14-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/rolling/ffw_swerve_drive_controller/1.1.14-2.tar.gz";
    name = "1.1.14-2.tar.gz";
    sha256 = "287a74407c2e50f844e0460bd7b541f65448497b6d3b88b20830b79acf3bed18";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros generate-parameter-library ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ control-msgs controller-interface geometry-msgs hardware-interface nav-msgs pluginlib rclcpp rclcpp-lifecycle rcpputils realtime-tools sensor-msgs std-srvs tf2 tf2-geometry-msgs tf2-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "AI Worker's swerve drive ros2_controller";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, easynav-common, easynav-core, easynav-planner, easynav-recovery, easynav-sensors, geometry-msgs, lifecycle-msgs, nav-msgs, pcl, pluginlib, rcl-interfaces, rclcpp, rclcpp-lifecycle, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-easynav-diagnostic-recovery";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_diagnostic_recovery/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "32a459f5d1717800a6ebb8e50ad0bf50b53db9e0ec9c9a3dc15e92f9aaabf042";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common easynav-planner easynav-recovery lifecycle-msgs ];
  propagatedBuildInputs = [ diagnostic-msgs easynav-common easynav-core easynav-sensors geometry-msgs nav-msgs pcl pluginlib rcl-interfaces rclcpp rclcpp-lifecycle visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: diagnosis-driven recovery system (safety reflexes, evaluators and mitigations with priority-based arbitration), the plugin interfaces it is composed of and the reference safety reflexes, evaluators and mitigations.";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, behaviortree-cpp-v3, builtin-interfaces, geometry-msgs, lifecycle-msgs, nav-msgs, nav2-common, nav2-msgs, nav2-util, rclcpp, rclcpp-action, rclcpp-lifecycle, sensor-msgs, std-msgs, std-srvs, test-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-nav2-behavior-tree";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_behavior_tree/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "554ecda7ad6e5ffca11fe326bff2b1d1a33fb53dc35ff18164086c5adbae05d6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common test-msgs ];
  propagatedBuildInputs = [ behaviortree-cpp-v3 builtin-interfaces geometry-msgs lifecycle-msgs nav-msgs nav2-msgs nav2-util rclcpp rclcpp-action rclcpp-lifecycle sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}

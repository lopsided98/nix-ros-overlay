
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, angles, geometry-msgs, nav2-common, nav2-msgs, nav2-util, opennav-docking, opennav-docking-core, rclcpp, rclcpp-components, rclcpp-lifecycle, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-opennav-following";
  version = "1.3.14-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/opennav_following/1.3.14-1.tar.gz";
    name = "1.3.14-1.tar.gz";
    sha256 = "e544958cfa2a9b69cf8e6d92faf05a8042f92695284c2b84ca5ad55ec4f44f2b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake angles nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav2-msgs nav2-util opennav-docking opennav-docking-core rclcpp rclcpp-components rclcpp-lifecycle tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A Task Server for dynamic following object";
    license = with lib.licenses; [ asl20 ];
  };
}

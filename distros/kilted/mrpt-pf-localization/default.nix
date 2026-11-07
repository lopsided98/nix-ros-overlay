
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, cmake, mola-relocalization, mp2p-icp, mrpt-gui, mrpt-libros-bridge, mrpt-msgs, mrpt-msgs-bridge, mrpt-slam, mrpt-tutorials, mrpt-viz, nav-msgs, pose-cov-ops, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kilted-mrpt-pf-localization";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/kilted/mrpt_pf_localization/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "2fb4cc694a15bf9b55eef71f7752aca943e57d5fd47d840e69887890a335c864";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake cmake ];
  checkInputs = [ ament-cmake-gtest mrpt-tutorials ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto mola-relocalization mp2p-icp mrpt-gui mrpt-libros-bridge mrpt-msgs mrpt-msgs-bridge mrpt-slam mrpt-viz nav-msgs pose-cov-ops rclcpp rclcpp-components sensor-msgs std-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake cmake ];

  meta = {
    description = "Package for robot 2D self-localization using dynamic or static (MRPT or ROS) maps.
	The interface is similar to amcl (https://wiki.ros.org/amcl)
   but supports different particle-filter algorithms, several grid maps at
   different heights, range-only localization, etc.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

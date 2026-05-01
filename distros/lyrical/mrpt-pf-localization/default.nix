
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, cmake, mola-relocalization, mp2p-icp, mrpt-libgui, mrpt-libros-bridge, mrpt-libslam, mrpt-msgs, mrpt-msgs-bridge, mrpt-tutorials, nav-msgs, pose-cov-ops, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-pf-localization";
  version = "2.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/lyrical/mrpt_pf_localization/2.4.0-3.tar.gz";
    name = "2.4.0-3.tar.gz";
    sha256 = "84418f66169625e806ed17b917ed4b0b4c14cfa1a34daba492fa333b0eccdd5a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake cmake ];
  checkInputs = [ ament-cmake-gtest mrpt-tutorials ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto mola-relocalization mp2p-icp mrpt-libgui mrpt-libros-bridge mrpt-libslam mrpt-msgs mrpt-msgs-bridge nav-msgs pose-cov-ops rclcpp rclcpp-components sensor-msgs std-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake cmake ];

  meta = {
    description = "Package for robot 2D self-localization using dynamic or static (MRPT or ROS) maps.
	The interface is similar to amcl (https://wiki.ros.org/amcl)
   but supports different particle-filter algorithms, several grid maps at
   different heights, range-only localization, etc.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

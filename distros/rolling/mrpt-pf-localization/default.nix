
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, cmake, mola-relocalization, mp2p-icp, mrpt-libgui, mrpt-libros-bridge, mrpt-libslam, mrpt-msgs, mrpt-msgs-bridge, mrpt-tutorials, nav-msgs, pose-cov-ops, rclcpp, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-rolling-mrpt-pf-localization";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/rolling/mrpt_pf_localization/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "ca6f81a9f566b1e70b1b2f4da01b404de36b906cad543464397a3720a2dfb26b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake cmake ];
  checkInputs = [ mrpt-tutorials ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto mola-relocalization mp2p-icp mrpt-libgui mrpt-libros-bridge mrpt-libslam mrpt-msgs mrpt-msgs-bridge nav-msgs pose-cov-ops rclcpp sensor-msgs std-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake cmake ];

  meta = {
    description = "Package for robot 2D self-localization using dynamic or static (MRPT or ROS) maps.
	The interface is similar to amcl (https://wiki.ros.org/amcl)
   but supports different particle-filter algorithms, several grid maps at
   different heights, range-only localization, etc.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

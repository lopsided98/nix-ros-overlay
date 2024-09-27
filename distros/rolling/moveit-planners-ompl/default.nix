
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, eigen3-cmake-module, llvmPackages, moveit-common, moveit-core, moveit-msgs, moveit-resources-fanuc-moveit-config, moveit-resources-panda-moveit-config, moveit-resources-pr2-description, moveit-ros-planning, ompl, pluginlib, rclcpp, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-moveit-planners-ompl";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_planners_ompl/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "b7ac6550675fc133881da589d9e3e03f99f6737d8b0dcf45948674845e7a7904";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-gtest eigen moveit-resources-fanuc-moveit-config moveit-resources-panda-moveit-config moveit-resources-pr2-description tf2-eigen ];
  propagatedBuildInputs = [ llvmPackages.openmp moveit-common moveit-core moveit-msgs moveit-ros-planning ompl pluginlib rclcpp tf2-eigen tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "MoveIt interface to OMPL";
    license = with lib.licenses; [ bsd3 ];
  };
}

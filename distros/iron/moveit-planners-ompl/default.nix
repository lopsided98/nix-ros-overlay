
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, llvmPackages, moveit-common, moveit-core, moveit-msgs, moveit-resources-fanuc-moveit-config, moveit-resources-panda-moveit-config, moveit-resources-pr2-description, moveit-ros-planning, ompl, pluginlib, rclcpp, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-moveit-planners-ompl";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/iron/moveit_planners_ompl/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "afb542c8e818c50a9d741fa864f0b545b696429772d7644d7f8ab9d16b59e3be";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common eigen moveit-resources-fanuc-moveit-config moveit-resources-panda-moveit-config moveit-resources-pr2-description tf2-eigen ];
  propagatedBuildInputs = [ llvmPackages.openmp moveit-common moveit-core moveit-msgs moveit-ros-planning ompl pluginlib rclcpp tf2-eigen tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''MoveIt interface to OMPL'';
    license = with lib.licenses; [ bsd3 ];
  };
}

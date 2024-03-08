
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-google-benchmark, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, angles, assimp, boost, bullet, common-interfaces, eigen, eigen-stl-containers, eigen3-cmake-module, fcl, generate-parameter-library, geometric-shapes, geometry-msgs, google-benchmark-vendor, kdl-parser, launch-testing-ament-cmake, moveit-common, moveit-msgs, moveit-resources-panda-moveit-config, moveit-resources-pr2-description, octomap, octomap-msgs, orocos-kdl-vendor, pkg-config, pluginlib, random-numbers, rcl-interfaces, rclcpp, rclpy, rsl, ruckig, sensor-msgs, shape-msgs, srdfdom, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-kdl, trajectory-msgs, urdf, urdfdom, urdfdom-headers, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-moveit-core";
  version = "2.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_core/2.9.0-2.tar.gz";
    name = "2.9.0-2.tar.gz";
    sha256 = "a5a4db427ccc738a71fa90e3e570d9ebff7d41530e57642f6d2f23b1673c1c1b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-gmock ament-cmake-google-benchmark ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common angles launch-testing-ament-cmake moveit-resources-panda-moveit-config moveit-resources-pr2-description orocos-kdl-vendor rcl-interfaces rclpy ];
  propagatedBuildInputs = [ angles assimp boost bullet common-interfaces eigen eigen-stl-containers eigen3-cmake-module fcl generate-parameter-library geometric-shapes geometry-msgs google-benchmark-vendor kdl-parser moveit-common moveit-msgs octomap octomap-msgs pluginlib random-numbers rclcpp rsl ruckig sensor-msgs shape-msgs srdfdom std-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-kdl trajectory-msgs urdf urdfdom urdfdom-headers visualization-msgs ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module pkg-config ];

  meta = {
    description = ''Core libraries used by MoveIt'';
    license = with lib.licenses; [ bsd3 ];
  };
}

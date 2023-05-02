
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, angles, assimp, boost, bullet, common-interfaces, eigen, eigen-stl-containers, eigen3-cmake-module, fcl, generate-parameter-library, geometric-shapes, geometry-msgs, kdl-parser, moveit-common, moveit-msgs, moveit-resources-panda-moveit-config, moveit-resources-pr2-description, octomap, octomap-msgs, orocos-kdl-vendor, pkg-config, pluginlib, pybind11-vendor, random-numbers, rclcpp, ruckig, sensor-msgs, shape-msgs, srdfdom, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-kdl, trajectory-msgs, urdf, urdfdom, urdfdom-headers, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-moveit-core";
  version = "2.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_core/2.7.3-1.tar.gz";
    name = "2.7.3-1.tar.gz";
    sha256 = "a22932121b5b13d77345d7612b221ec42ef7ced1a171c4148ace0138d79c4c18";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common angles moveit-resources-panda-moveit-config moveit-resources-pr2-description orocos-kdl-vendor ];
  propagatedBuildInputs = [ angles assimp boost bullet common-interfaces eigen eigen-stl-containers eigen3-cmake-module fcl generate-parameter-library geometric-shapes geometry-msgs kdl-parser moveit-common moveit-msgs octomap octomap-msgs pluginlib pybind11-vendor random-numbers rclcpp ruckig sensor-msgs shape-msgs srdfdom std-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-kdl trajectory-msgs urdf urdfdom urdfdom-headers visualization-msgs ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module pkg-config ];

  meta = {
    description = ''Core libraries used by MoveIt'';
    license = with lib.licenses; [ bsd3 ];
  };
}

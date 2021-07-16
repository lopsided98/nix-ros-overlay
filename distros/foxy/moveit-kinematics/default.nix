
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, class-loader, eigen, moveit-common, moveit-core, moveit-msgs, moveit-resources-fanuc-description, moveit-resources-fanuc-moveit-config, moveit-resources-panda-description, moveit-resources-panda-moveit-config, moveit-ros-planning, orocos-kdl, pluginlib, pythonPackages, ros-testing, tf2, tf2-kdl, urdfdom }:
buildRosPackage {
  pname = "ros-foxy-moveit-kinematics";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_kinematics/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "2204048d999d8fca2ec2ebd3ab75e09d4369198b804bb6c78f5edf4f29900db0";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common moveit-resources-fanuc-description moveit-resources-fanuc-moveit-config moveit-resources-panda-description moveit-resources-panda-moveit-config moveit-ros-planning ros-testing ];
  propagatedBuildInputs = [ class-loader eigen moveit-core moveit-msgs orocos-kdl pluginlib pythonPackages.lxml tf2 tf2-kdl urdfdom ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package for all inverse kinematics solvers in MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

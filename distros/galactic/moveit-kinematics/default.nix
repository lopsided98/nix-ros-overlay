
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, class-loader, eigen, moveit-common, moveit-core, moveit-msgs, moveit-resources-fanuc-description, moveit-resources-fanuc-moveit-config, moveit-resources-panda-description, moveit-resources-panda-moveit-config, moveit-ros-planning, orocos-kdl, pluginlib, pythonPackages, ros-testing, tf2, tf2-kdl, urdfdom }:
buildRosPackage {
  pname = "ros-galactic-moveit-kinematics";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/moveit_kinematics/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "408074ade900517739e084847612d01b7edeec055d12c41baf98153528f2c30c";
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

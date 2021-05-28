
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, class-loader, eigen, moveit-common, moveit-core, moveit-msgs, moveit-resources-fanuc-description, moveit-resources-fanuc-moveit-config, moveit-resources-panda-description, moveit-resources-panda-moveit-config, moveit-ros-planning, orocos-kdl, pluginlib, pythonPackages, tf2, tf2-kdl, urdfdom }:
buildRosPackage {
  pname = "ros-foxy-moveit-kinematics";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_kinematics/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "055d25d1efd60e673ef7406e51c94a3efd0802b0ab4a3616d752a76f8d785466";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common moveit-resources-fanuc-description moveit-resources-fanuc-moveit-config moveit-resources-panda-description moveit-resources-panda-moveit-config moveit-ros-planning ];
  propagatedBuildInputs = [ class-loader eigen moveit-core moveit-msgs orocos-kdl pluginlib pythonPackages.lxml tf2 tf2-kdl urdfdom ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package for all inverse kinematics solvers in MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

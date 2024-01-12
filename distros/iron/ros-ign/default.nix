
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-gz, ros-ign-bridge, ros-ign-gazebo, ros-ign-gazebo-demos, ros-ign-image }:
buildRosPackage {
  pname = "ros-iron-ros-ign";
  version = "0.254.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/iron/ros_ign/0.254.0-1.tar.gz";
    name = "0.254.0-1.tar.gz";
    sha256 = "2c6a917189bfb608368a86db580a4ebfdf59b1e561715367787a1d049f60b691";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ros-gz ros-ign-bridge ros-ign-gazebo ros-ign-gazebo-demos ros-ign-image ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Shim meta-package to redirect to <a href="https://github.com/gazebosim/ros_gz/tree/ros2/ros_gz">ros_gz</a>.'';
    license = with lib.licenses; [ asl20 ];
  };
}

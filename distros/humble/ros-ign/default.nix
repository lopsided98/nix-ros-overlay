
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-gz, ros-ign-bridge, ros-ign-gazebo, ros-ign-gazebo-demos, ros-ign-image }:
buildRosPackage {
  pname = "ros-humble-ros-ign";
  version = "0.244.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_ign/0.244.6-1.tar.gz";
    name = "0.244.6-1.tar.gz";
    sha256 = "e19e77ba05e2bc0adcdaa5fc7a213602d793d67c93d9f0f8a895993abcc76173";
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

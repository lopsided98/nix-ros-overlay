
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-gz, ros-ign-bridge, ros-ign-gazebo, ros-ign-gazebo-demos, ros-ign-image }:
buildRosPackage {
  pname = "ros-humble-ros-ign";
  version = "0.244.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_ign/0.244.11-1.tar.gz";
    name = "0.244.11-1.tar.gz";
    sha256 = "ba74eb98525f642a0c4d24ac9be4a7d2652ae921c86d27203cac3f488a0323c4";
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

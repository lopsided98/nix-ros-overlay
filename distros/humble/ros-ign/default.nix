
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-gz, ros-ign-bridge, ros-ign-gazebo, ros-ign-gazebo-demos, ros-ign-image }:
buildRosPackage {
  pname = "ros-humble-ros-ign";
  version = "0.244.17-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_ign/0.244.17-1.tar.gz";
    name = "0.244.17-1.tar.gz";
    sha256 = "6a61e13b934f3e7e41de4feb0c77817c8493b598527d2aea8a61a0ad1e014e0a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ros-gz ros-ign-bridge ros-ign-gazebo ros-ign-gazebo-demos ros-ign-image ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shim meta-package to redirect to <a href=\"https://github.com/gazebosim/ros_gz/tree/ros2/ros_gz\">ros_gz</a>.";
    license = with lib.licenses; [ asl20 ];
  };
}

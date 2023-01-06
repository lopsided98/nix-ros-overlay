
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-ign-bridge, ros-ign-gazebo, ros-ign-gazebo-demos, ros-ign-image }:
buildRosPackage {
  pname = "ros-rolling-ros-ign";
  version = "0.244.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/rolling/ros_ign/0.244.3-1.tar.gz";
    name = "0.244.3-1.tar.gz";
    sha256 = "227d5ad5a468d083e1271890daa0a2eadcdc318b84b20cb3106b6cb40957fff9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ros-ign-bridge ros-ign-gazebo ros-ign-gazebo-demos ros-ign-image ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta-package containing interfaces for using ROS 2 with <a href="https://ignitionrobotics.org">Ignition</a> simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}

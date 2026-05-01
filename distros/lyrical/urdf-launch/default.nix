
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, launch-ros, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, xacro }:
buildRosPackage {
  pname = "ros-lyrical-urdf-launch";
  version = "0.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_launch-release/archive/release/lyrical/urdf_launch/0.1.2-3.tar.gz";
    name = "0.1.2-3.tar.gz";
    sha256 = "dee28c511248f228595948ce25beb2689566fd86367da7b31833adf5f7e78404";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui launch-ros robot-state-publisher rviz-common rviz-default-plugins rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Launch files for common URDF operations";
    license = with lib.licenses; [ "BSD-3-clause" ];
  };
}

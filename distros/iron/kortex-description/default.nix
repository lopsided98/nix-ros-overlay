
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, picknik-reset-fault-controller, picknik-twist-controller, robot-state-publisher, robotiq-description, rviz2 }:
buildRosPackage {
  pname = "ros-iron-kortex-description";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/iron/kortex_description/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "536ef2ec636b2342572c2b354a054958c9f66dcce0e2164e587d813ed7ba145f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui picknik-reset-fault-controller picknik-twist-controller robot-state-publisher robotiq-description rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''<p>URDF and xacro description package for Kortex robots</p>
    <p>This package contains configuration data, 3D models and launch files
for Kortex arms and supported grippers</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

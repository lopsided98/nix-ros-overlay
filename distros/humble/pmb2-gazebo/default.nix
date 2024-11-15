
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, launch-pal, pal-gazebo-plugins, pal-gazebo-worlds, pmb2-2dnav, pmb2-bringup, pmb2-description }:
buildRosPackage {
  pname = "ros-humble-pmb2-gazebo";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_simulation-release/archive/release/humble/pmb2_gazebo/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "74e5cf2e77341cf41cd8ddbdc2fb61845ae8f57afb8df264a9bdbb44c8325d62";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros2-control launch-pal pal-gazebo-plugins pal-gazebo-worlds pmb2-2dnav pmb2-bringup pmb2-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Simulation files for the PMB2 robot.";
    license = with lib.licenses; [ asl20 ];
  };
}

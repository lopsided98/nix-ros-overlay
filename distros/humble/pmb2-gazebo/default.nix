
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-ros, gazebo-ros2-control, launch-pal, pal-gazebo-worlds, pmb2-2dnav, pmb2-bringup, pmb2-description }:
buildRosPackage {
  pname = "ros-humble-pmb2-gazebo";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_simulation-release/archive/release/humble/pmb2_gazebo/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "2290312e81004e766d6e5ea6f077529573487e3ddcdbb7e13d70d888561ff16a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-ros gazebo-ros2-control launch-pal pal-gazebo-worlds pmb2-2dnav pmb2-bringup pmb2-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Simulation files for the PMB2 robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}

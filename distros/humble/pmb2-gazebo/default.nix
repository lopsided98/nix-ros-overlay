
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-ros, gazebo-ros2-control, launch-pal, pal-gazebo-worlds, pmb2-bringup, pmb2-description }:
buildRosPackage {
  pname = "ros-humble-pmb2-gazebo";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_simulation-gbp/archive/release/humble/pmb2_gazebo/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "3601c64e17d8db7b0c259dc7dc7db1b0cfccfa39ebe10b82bae962f5f37f7c40";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-ros gazebo-ros2-control launch-pal pal-gazebo-worlds pmb2-bringup pmb2-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Simulation files for the PMB2 robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}

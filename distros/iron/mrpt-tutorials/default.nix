
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cmake, mvsim, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-iron-mrpt-tutorials";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/iron/mrpt_tutorials/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "be1e1093be5e4187fe1f4ee52231946f72da9f4e5b5489c4d258a65db3d415a7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake cmake ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common mvsim teleop-twist-keyboard ];
  nativeBuildInputs = [ ament-cmake cmake ];

  meta = {
    description = "Example files used as tutorials for MRPT ROS packages";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

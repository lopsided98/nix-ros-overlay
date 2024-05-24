
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, gz-plugin-vendor, gz-sim-vendor }:
buildRosPackage {
  pname = "ros-jazzy-leo-gz-plugins";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_simulator-release/archive/release/jazzy/leo_gz_plugins/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "6ffa912907c2653482125eb6c600cb4bfd48aad3dcaa461975e2f853c836bdc1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cpplint ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ gz-plugin-vendor gz-sim-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Plugins for Leo Rover Gazebo simulation in ROS 2";
    license = with lib.licenses; [ mit ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, gz-plugin-vendor, gz-sim-vendor }:
buildRosPackage {
  pname = "ros-jazzy-leo-gz-plugins";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_simulator-release/archive/release/jazzy/leo_gz_plugins/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "803a5a36e65eb4c4146e20ff1a02c17bb225f4fe81327103d5db85f0b0dfb6b9";
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

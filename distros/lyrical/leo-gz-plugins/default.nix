
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, gz-plugin-vendor, gz-sim-vendor }:
buildRosPackage {
  pname = "ros-lyrical-leo-gz-plugins";
  version = "2.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_simulator-release/archive/release/lyrical/leo_gz_plugins/2.0.2-3.tar.gz";
    name = "2.0.2-3.tar.gz";
    sha256 = "3af4201c975d4a1fd8fa0fc6a1402b9a6000c42b1f30b25fa5c521c362c354ec";
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

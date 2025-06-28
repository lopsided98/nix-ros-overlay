
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, gz-plugin-vendor, gz-sim-vendor }:
buildRosPackage {
  pname = "ros-kilted-leo-gz-plugins";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_simulator-release/archive/release/kilted/leo_gz_plugins/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "8da18c8fc0340d6145deba2984eefe625e5f1992e816b29120e344043ed1bbce";
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

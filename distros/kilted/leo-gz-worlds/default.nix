
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto }:
buildRosPackage {
  pname = "ros-kilted-leo-gz-worlds";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_simulator-release/archive/release/kilted/leo_gz_worlds/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "c3238685cafa8b2544312ea302a801627f9b5ce13184b7932d2eb43eb093a2a3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo worlds for Leo Rover simulation in ROS 2";
    license = with lib.licenses; [ mit ];
  };
}

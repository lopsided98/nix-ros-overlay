
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto }:
buildRosPackage {
  pname = "ros-rolling-leo-gz-worlds";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_simulator-release/archive/release/rolling/leo_gz_worlds/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "090c6e325af44acc7e85ef780eb3aef6e18a5115676a36e2501a01924e19a280";
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

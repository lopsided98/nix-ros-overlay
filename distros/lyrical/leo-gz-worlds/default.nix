
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto }:
buildRosPackage {
  pname = "ros-lyrical-leo-gz-worlds";
  version = "2.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_simulator-release/archive/release/lyrical/leo_gz_worlds/2.0.2-3.tar.gz";
    name = "2.0.2-3.tar.gz";
    sha256 = "b7e73516f130d3bac0a848b551e9f232f49109f7afde69b17152c8eb3f432bf4";
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

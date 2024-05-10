
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto }:
buildRosPackage {
  pname = "ros-humble-leo-gz-worlds";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_simulator-release/archive/release/humble/leo_gz_worlds/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "b50de084e695744a6b9e1b43895120288b1cbd064b320f9f57d78adaad386ad9";
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

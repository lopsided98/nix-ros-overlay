
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-jazzy-neo-simulation2";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/neo_simulation2-release/archive/release/jazzy/neo_simulation2/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "4bbb459c38d6e44d9fb31ece00dcb92880275b5923636dfcbd2cb7d5332b5f2d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS-2 Simulation packages for neobotix robots";
    license = with lib.licenses; [ mit ];
  };
}

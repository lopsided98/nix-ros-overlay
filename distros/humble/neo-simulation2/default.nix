
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-neo-simulation2";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/neo_simulation2-release/archive/release/humble/neo_simulation2/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "fba9c54be52a71f5f3ebdc8fd739a5736e0ad27be1f0191d9f5878d5512b43fe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS-2 Simulation packages for neobotix robots'';
    license = with lib.licenses; [ mit ];
  };
}

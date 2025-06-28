
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-neo-simulation2";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/neo_simulation2-release/archive/release/kilted/neo_simulation2/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "0ddd12cb613c65388e9ba980802bc59bca649e21530c27a562c982901837539a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS-2 Simulation packages for neobotix robots";
    license = with lib.licenses; [ mit ];
  };
}

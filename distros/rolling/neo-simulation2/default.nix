
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-neo-simulation2";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/neo_simulation2-release/archive/release/rolling/neo_simulation2/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "934502cb11ee667ae37d2ad426d61a935d3233ad8332a60b5eaf8af6d303e100";
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

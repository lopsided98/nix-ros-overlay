
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-neo-simulation2";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/neo_simulation2-release/archive/release/rolling/neo_simulation2/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "4c42e86f728406ae0ff84bd71e64fe1c740b5f451bbf3196a227319b8fdde9c8";
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

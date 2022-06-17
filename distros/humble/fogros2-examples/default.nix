
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, fogros2, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-fogros2-examples";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fogros2-release/archive/release/humble/fogros2_examples/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "6613e0d7877aac0bf0707e68f296bd3960db395f53b1ec0485d60187b53567d6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ fogros2 ];

  meta = {
    description = ''Examples using FogROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}

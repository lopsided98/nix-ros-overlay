
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, fogros2, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-fogros2-examples";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fogros2-release/archive/release/humble/fogros2_examples/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "de71035ee00fb2c2b280815d8b277cbb1d61a09be05d638ff8eba42243c7ac21";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ fogros2 ];

  meta = {
    description = ''Examples using FogROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-launch-yaml";
  version = "0.10.8-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/foxy/launch_yaml/0.10.8-2.tar.gz";
    name = "0.10.8-2.tar.gz";
    sha256 = "986646cb49c14695273b5b87593995c6323b20e19023ecf695d3936bec7cda33";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = ''YAML frontend for the launch package.'';
    license = with lib.licenses; [ asl20 ];
  };
}

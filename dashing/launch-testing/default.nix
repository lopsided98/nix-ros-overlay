
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, launch, pythonPackages, ament-copyright, ament-pep257, python3Packages, ament-index-python }:
buildRosPackage {
  pname = "ros-dashing-launch-testing";
  version = "0.8.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/dashing/launch_testing/0.8.7-1.tar.gz";
    name = "0.8.7-1.tar.gz";
    sha256 = "00fa4f3b31f42e796172decf55488d3fadc4bc9e538e6a5d53224c5b43835959";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.mock ament-flake8 pythonPackages.pytest launch ament-pep257 ament-copyright ];
  propagatedBuildInputs = [ ament-index-python launch ];

  meta = {
    description = ''A package to create tests which involve launch files and multiple processes.'';
    license = with lib.licenses; [ asl20 ];
  };
}

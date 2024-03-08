
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-launch-xml";
  version = "3.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_xml/3.4.0-2.tar.gz";
    name = "3.4.0-2.tar.gz";
    sha256 = "33d1f2e8f5a1e9676937b2805c3c49d996ad76ec8ec74075170f3468cbc12e72";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = ''XML frontend for the launch package.'';
    license = with lib.licenses; [ asl20 ];
  };
}

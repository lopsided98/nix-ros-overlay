
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-testing, osrf-pycommon, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-launch-pytest";
  version = "3.8.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/kilted/launch_pytest/3.8.1-2.tar.gz";
    name = "3.8.1-2.tar.gz";
    sha256 = "a55938bf49edb462016a110e182fb32789f6f17a1ff0a27937169121603aef40";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ ament-index-python launch launch-testing osrf-pycommon python3Packages.pytest ];

  meta = {
    description = "A package to create tests which involve launch files and multiple processes.";
    license = with lib.licenses; [ asl20 ];
  };
}

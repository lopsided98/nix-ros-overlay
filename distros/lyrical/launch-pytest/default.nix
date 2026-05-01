
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-testing, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-launch-pytest";
  version = "3.9.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/lyrical/launch_pytest/3.9.7-3.tar.gz";
    name = "3.9.7-3.tar.gz";
    sha256 = "46651fce66b57fd2011d53063ae6e97d2197558faf62aca29c8b4d5a87ed333f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ ament-index-python launch launch-testing python3Packages.osrf-pycommon python3Packages.pytest ];

  meta = {
    description = "A package to create tests which involve launch files and multiple processes.";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-lint, ament-pep257, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-ament-copyright";
  version = "0.12.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_copyright/0.12.7-2.tar.gz";
    name = "0.12.7-2.tar.gz";
    sha256 = "211b52f844ffd9b0a311dd75868b005c88034a16bbea52b215492ec33c2f64fd";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-lint python3Packages.importlib-metadata ];

  meta = {
    description = ''The ability to check source files for copyright and license
    information.'';
    license = with lib.licenses; [ asl20 ];
  };
}

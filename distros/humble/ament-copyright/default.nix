
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-lint, ament-pep257, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-ament-copyright";
  version = "0.12.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_copyright/0.12.6-1.tar.gz";
    name = "0.12.6-1.tar.gz";
    sha256 = "f511f23e017894914ed86289398243c0723110f32968ac4ce735f7e22a550291";
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

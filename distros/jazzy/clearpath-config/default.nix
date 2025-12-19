
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-config";
  version = "2.8.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_config-release/archive/release/jazzy/clearpath_config/2.8.2-1.tar.gz";
    name = "2.8.2-1.tar.gz";
    sha256 = "7d1bf69351a738a59fb91628473c6836e4c72df63c8a7d9d22d94a43c839bc83";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyyaml ];

  meta = {
    description = "Clearpath Configuration YAML Parser and Writer";
    license = with lib.licenses; [ bsd3 ];
  };
}

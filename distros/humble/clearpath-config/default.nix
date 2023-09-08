
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-clearpath-config";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_config-release/archive/release/humble/clearpath_config/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "7b202e7d533ebac41399892568bf770bd5b962b99249a8c149fe84b24956a869";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyyaml ];

  meta = {
    description = ''Clearpath Configuration YAML Parser and Writer'';
    license = with lib.licenses; [ bsd3 ];
  };
}

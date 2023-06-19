
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-lint, ament-pep257, libxml2, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-ament-xmllint";
  version = "0.14.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/iron/ament_xmllint/0.14.1-2.tar.gz";
    name = "0.14.1-2.tar.gz";
    sha256 = "e7c2956b587b6891a650681321918b0f4bd6330041c2122c690d9268794087b5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-lint libxml2 ];

  meta = {
    description = ''The ability to check XML files like the package manifest using xmllint
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

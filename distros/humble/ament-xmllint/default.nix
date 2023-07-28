
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-lint, ament-pep257, libxml2, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-ament-xmllint";
  version = "0.12.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_xmllint/0.12.7-2.tar.gz";
    name = "0.12.7-2.tar.gz";
    sha256 = "57fffed5f4009fb172061ee87bdba1018702f6cdd8f2da6e3b03f81c272adab8";
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

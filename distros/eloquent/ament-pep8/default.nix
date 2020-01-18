
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-eloquent-ament-pep8";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/ament_pep8/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "754c4c8c70bc44efae9150c022c67cb502e26d0c4e21d3eca618a2b02da7299b";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.pep8 ];

  meta = {
    description = ''The ability to check code against the style conventions in PEP 8 and
    generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

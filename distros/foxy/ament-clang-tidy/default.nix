
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, clang, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-ament-clang-tidy";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/foxy/ament_clang_tidy/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "b61d717e3b88ef0fa85719dd1bf4ae52ee38548f7392a809347b782ef1377973";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ clang python3Packages.pyyaml ];

  meta = {
    description = ''The ability to check code against style conventions using
    clang-tidy and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

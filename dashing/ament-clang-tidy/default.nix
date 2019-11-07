
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, ament-flake8, pythonPackages, ament-pep257, python3Packages, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-ament-clang-tidy";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_clang_tidy/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "e7ff536a9009952a123951eff6e8ca3bafc935d736b995a91cdc26abb9eb3591";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ python3Packages.pyyaml clang ];

  meta = {
    description = ''The ability to check code against style conventions using
    clang-tidy and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

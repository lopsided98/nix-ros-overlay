
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-dashing-ament-pep8";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_pep8/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "bf2aabf5a838b9ad18d3e5c3bd146e0a3601dd3f276a6b314c4a11231d481671";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.pep8 ];

  meta = {
    description = ''The ability to check code against the style conventions in PEP 8 and
    generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

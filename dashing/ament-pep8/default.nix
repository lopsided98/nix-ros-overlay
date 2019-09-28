
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-dashing-ament-pep8";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_pep8/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "0a6a8815dec4d11a0e227726e8c4fbbc6c20afd58789335d4e570e5d9453fcc8";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.pep8 ];

  meta = {
    description = ''The ability to check code against the style conventions in PEP 8 and
    generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

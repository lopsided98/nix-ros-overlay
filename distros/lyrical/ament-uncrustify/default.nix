
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-pycodestyle, ament-xmllint, python3Packages, uncrustify-vendor }:
buildRosPackage {
  pname = "ros-lyrical-ament-uncrustify";
  version = "0.20.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/lyrical/ament_uncrustify/0.20.7-1.tar.gz";
    name = "0.20.7-1.tar.gz";
    sha256 = "89210deec338bad9d3b3a0a7ad1c49e37764852d338cca02b8b2cc3bac81bd18";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-pycodestyle ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ uncrustify-vendor ];

  meta = {
    description = "The ability to check code against style conventions using uncrustify
    and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

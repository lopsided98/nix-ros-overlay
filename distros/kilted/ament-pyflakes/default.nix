
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pycodestyle, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-ament-pyflakes";
  version = "0.19.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/kilted/ament_pyflakes/0.19.2-2.tar.gz";
    name = "0.19.2-2.tar.gz";
    sha256 = "9b493573a091f3f8dc0fe4eb34fe3fc74cf7e6429d428281c032513543ea74e8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-pycodestyle ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyflakes ];

  meta = {
    description = "The ability to check code using pyflakes and generate xUnit test
    result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

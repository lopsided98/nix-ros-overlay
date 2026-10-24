
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pycodestyle, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-pyflakes";
  version = "0.21.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_pyflakes/0.21.4-1.tar.gz";
    name = "0.21.4-1.tar.gz";
    sha256 = "f72439018310355769c52d98b6847c6411bc83835ed8e08b43f97e1eab82886a";
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

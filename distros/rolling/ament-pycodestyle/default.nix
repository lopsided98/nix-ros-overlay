
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-pycodestyle";
  version = "0.21.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_pycodestyle/0.21.0-1.tar.gz";
    name = "0.21.0-1.tar.gz";
    sha256 = "51264efe3029b68a9f63b5e52b752555df3feae7f62cea787ca6c03f9756460b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.pycodestyle ];

  meta = {
    description = "The ability to check code against the style conventions in PEP 8 and
    generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}

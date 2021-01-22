
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-foxy-ament-pycodestyle";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/foxy/ament_pycodestyle/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "e3e01f876f82d48b4dd4f3effaa2c454d4b567bb287cd5d59e733a2735f9b15c";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.pycodestyle ];

  meta = {
    description = ''The ability to check code against the style conventions in PEP 8 and
    generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

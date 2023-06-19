
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-iron-ament-pycodestyle";
  version = "0.14.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/iron/ament_pycodestyle/0.14.1-2.tar.gz";
    name = "0.14.1-2.tar.gz";
    sha256 = "5de9c802f9d9679e7d5bfe300e0f578dc03a312ac8d698aeacea4998322bd5f9";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.pycodestyle ];

  meta = {
    description = ''The ability to check code against the style conventions in PEP 8 and
    generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

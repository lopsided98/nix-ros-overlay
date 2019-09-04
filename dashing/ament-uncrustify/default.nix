
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uncrustify-vendor }:
buildRosPackage {
  pname = "ros-dashing-ament-uncrustify";
  version = "0.7.9-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_uncrustify/0.7.9-1.tar.gz;
    sha256 = "978491fb61b71ca8e1bd4c4d9619cc29870ce751ed95663c943c3b6ca4bac43a";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ uncrustify-vendor ];

  meta = {
    description = ''The ability to check code against style conventions using uncrustify
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

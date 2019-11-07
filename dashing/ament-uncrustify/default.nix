
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uncrustify-vendor }:
buildRosPackage {
  pname = "ros-dashing-ament-uncrustify";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_uncrustify/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "db773d68f720572922d3df081ef5cd6bba04cd0d966bedaead414dec4f2e00c8";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ uncrustify-vendor ];

  meta = {
    description = ''The ability to check code against style conventions using uncrustify
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

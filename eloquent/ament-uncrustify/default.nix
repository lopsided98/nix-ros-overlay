
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uncrustify-vendor }:
buildRosPackage {
  pname = "ros-eloquent-ament-uncrustify";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/ament_uncrustify/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "6a2a64fb7a808ba6659b811751fda97be5bceefe0b1953d31318c2f0d9ad270a";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ uncrustify-vendor ];

  meta = {
    description = ''The ability to check code against style conventions using uncrustify
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

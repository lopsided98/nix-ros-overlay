
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uncrustify-vendor }:
buildRosPackage {
  pname = "ros-crystal-ament-uncrustify";
  version = "0.6.4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/crystal/ament_uncrustify/0.6.4-0.tar.gz";
    name = "0.6.4-0.tar.gz";
    sha256 = "4303f28d8848fb7120b71011fbd4288245952a807d4d6f7e95aaf2193f804e78";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ uncrustify-vendor ];

  meta = {
    description = ''The ability to check code against style conventions using uncrustify
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

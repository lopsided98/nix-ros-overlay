
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uncrustify-vendor }:
buildRosPackage {
  pname = "ros-dashing-ament-uncrustify";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_uncrustify/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "f6733ce61f49ebfac0fb2f5ffb0f4b8a0b4b7900588cdc47b4110bf6e7e485fb";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ uncrustify-vendor ];

  meta = {
    description = ''The ability to check code against style conventions using uncrustify
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}

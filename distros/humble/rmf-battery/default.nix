
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, eigen, eigen3-cmake-module, rmf-traffic, rmf-utils }:
buildRosPackage {
  pname = "ros-humble-rmf-battery";
  version = "0.1.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_battery-release/archive/release/humble/rmf_battery/0.1.3-2.tar.gz";
    name = "0.1.3-2.tar.gz";
    sha256 = "db1f2855e8691e4be28d9cc3fdd66bbf2318299ee97ca1454c3d347f56692609";
  };

  buildType = "cmake";
  buildInputs = [ eigen eigen3-cmake-module ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ rmf-traffic rmf-utils ];
  nativeBuildInputs = [ eigen3-cmake-module ];

  meta = {
    description = ''Package for modelling battery life of robots'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module, fmt }:
buildRosPackage {
  pname = "ros-foxy-maliput-drake";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_drake-release/archive/release/foxy/maliput_drake/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "62c1eb10211bb8818d8593cbaa3e759763c4d5e52432445b8423f2c2272b1a7c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module fmt ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''Maliput drake extraction to provide trajectory integration support'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}

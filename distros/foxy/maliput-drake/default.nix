
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module, fmt }:
buildRosPackage {
  pname = "ros-foxy-maliput-drake";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_drake-release/archive/release/foxy/maliput_drake/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "4ab5e4ddc68e6ded0ed77e00fbefe441c8171aa73a872a297cbdfb0ff9064056";
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

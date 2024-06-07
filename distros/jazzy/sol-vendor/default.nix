
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, git, ouxt-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-sol-vendor";
  version = "0.0.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sol_vendor-release/archive/release/jazzy/sol_vendor/0.0.3-5.tar.gz";
    name = "0.0.3-5.tar.gz";
    sha256 = "9b1afa408b8d09d3815c4609d185590a44ef9061f06b37b78520ae26357125bf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  checkInputs = [ ament-lint-auto ouxt-lint-common ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "vendor package for the sol2 library";
    license = with lib.licenses; [ asl20 mit ];
  };
}

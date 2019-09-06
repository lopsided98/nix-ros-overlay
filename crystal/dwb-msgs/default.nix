
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake-pytest, ament-cmake, ament-lint-common, launch-testing, ament-cmake-gtest, launch, nav-msgs, std-msgs, ament-lint-auto, rosidl-default-runtime, nav-2d-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-dwb-msgs";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/dwb_msgs/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "7c6481c5bee51568f7797885b0b4c2fe8ae830896c770644f8de11084f7bc04e";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces nav-msgs std-msgs rosidl-default-runtime nav-2d-msgs geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ builtin-interfaces nav-msgs std-msgs rosidl-default-runtime nav-2d-msgs geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Message/Service definitions specifically for the dwb_core'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

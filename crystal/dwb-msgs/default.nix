
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, launch, nav-2d-msgs, rosidl-default-runtime, std-msgs, launch-testing, ament-lint-common, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, builtin-interfaces, nav-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-dwb-msgs";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/dwb_msgs/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "7c6481c5bee51568f7797885b0b4c2fe8ae830896c770644f8de11084f7bc04e";
  };

  buildType = "ament_cmake";
  buildInputs = [ geometry-msgs rosidl-default-runtime std-msgs nav-2d-msgs builtin-interfaces nav-msgs ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs nav-2d-msgs builtin-interfaces nav-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Message/Service definitions specifically for the dwb_core'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

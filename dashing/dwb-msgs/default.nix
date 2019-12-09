
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, launch, nav-2d-msgs, rosidl-default-runtime, std-msgs, launch-testing, ament-lint-common, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, builtin-interfaces, nav-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-dwb-msgs";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/dwb_msgs/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "e0de01cf964ec1df25e34c9913d5bf0a878f51c9002e3938a44d305dc5226796";
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


# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-pal-gripper-description";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_gripper-release/archive/release/humble/pal_gripper_description/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "6d6f58fe27df6772d428ee901ac54f9bc611ca06c8ebbecdf1f10c764d00ed2a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common urdf-test ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''The pal_gripper_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}

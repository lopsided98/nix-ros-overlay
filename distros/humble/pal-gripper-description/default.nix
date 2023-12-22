
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, pal-urdf-utils, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-pal-gripper-description";
  version = "3.0.7-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_gripper-release/archive/release/humble/pal_gripper_description/3.0.7-1.tar.gz";
    name = "3.0.7-1.tar.gz";
    sha256 = "ce1d949162f559f3d87e7bca47555de5e777d55a498825f94e7eb85abda786b1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common urdf-test ];
  propagatedBuildInputs = [ pal-urdf-utils xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''The pal_gripper_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}

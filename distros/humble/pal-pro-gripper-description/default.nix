
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, pal-urdf-utils, xacro }:
buildRosPackage {
  pname = "ros-humble-pal-pro-gripper-description";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_pro_gripper-release/archive/release/humble/pal_pro_gripper_description/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "16d6f8b28e0d9d397a5225250446ffae07b8d90d04572a75a4c1e5e964a1d713";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pal-urdf-utils xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The pal_pro_gripper_description package";
    license = with lib.licenses; [ asl20 ];
  };
}

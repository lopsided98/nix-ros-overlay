
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, xacro }:
buildRosPackage {
  pname = "ros-humble-pal-robotiq-description";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_robotiq_gripper-release/archive/release/humble/pal_robotiq_description/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "2d93c2253e4d0f019761b5caea45ff70b7ac8476e08f24b9d5b242e7a862fd8c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The pal_robotiq_description package";
    license = with lib.licenses; [ asl20 ];
  };
}

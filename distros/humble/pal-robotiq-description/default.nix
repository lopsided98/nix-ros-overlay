
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, xacro }:
buildRosPackage {
  pname = "ros-humble-pal-robotiq-description";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_robotiq_gripper-release/archive/release/humble/pal_robotiq_description/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "fb6f6424fd4a350b6eb6a73347f4b0caa206bc45ead1bee8c4baa0c941130647";
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

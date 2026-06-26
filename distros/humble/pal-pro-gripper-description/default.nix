
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, pal-urdf-utils, xacro }:
buildRosPackage {
  pname = "ros-humble-pal-pro-gripper-description";
  version = "1.12.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_pro_gripper-release/archive/release/humble/pal_pro_gripper_description/1.12.5-1.tar.gz";
    name = "1.12.5-1.tar.gz";
    sha256 = "0851bf0a601a3aa3c6636b660d6596ac847b5b1822493150a222023804d933fb";
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

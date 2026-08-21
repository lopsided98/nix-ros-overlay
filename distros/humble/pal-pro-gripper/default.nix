
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pal-pro-gripper-controller-configuration, pal-pro-gripper-description }:
buildRosPackage {
  pname = "ros-humble-pal-pro-gripper";
  version = "1.12.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_pro_gripper-release/archive/release/humble/pal_pro_gripper/1.12.6-1.tar.gz";
    name = "1.12.6-1.tar.gz";
    sha256 = "9d3b38ea6c37e8d816ac6fe0d90e3eead46d052e0bfc6722177e7de65bc8eae4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ pal-pro-gripper-controller-configuration pal-pro-gripper-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The pal_pro_gripper package";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, omni-base-bringup, omni-base-controller-configuration, omni-base-description }:
buildRosPackage {
  pname = "ros-humble-omni-base-robot";
  version = "2.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/omni_base_robot-release/archive/release/humble/omni_base_robot/2.17.0-1.tar.gz";
    name = "2.17.0-1.tar.gz";
    sha256 = "06c47ab57ccedd39add0aa00c9b2d668beba48b8cdf76a3ac380298e2310505c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ omni-base-bringup omni-base-controller-configuration omni-base-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base_robot package";
    license = with lib.licenses; [ asl20 ];
  };
}

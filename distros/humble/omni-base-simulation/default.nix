
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, omni-base-gazebo }:
buildRosPackage {
  pname = "ros-humble-omni-base-simulation";
  version = "2.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/omni_base_simulation-release/archive/release/humble/omni_base_simulation/2.16.0-1.tar.gz";
    name = "2.16.0-1.tar.gz";
    sha256 = "fc7d09b2f3d2c8c3af6b70a9f741586c9c284e336b23084d19a823634af623eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ omni-base-gazebo ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base_simulation package";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, omni-base-gazebo }:
buildRosPackage {
  pname = "ros-humble-omni-base-simulation";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_simulation-release/archive/release/humble/omni_base_simulation/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "26cd0c9526fe863760ca741539984aa5990f69d072271211e460f9226a7cbe28";
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

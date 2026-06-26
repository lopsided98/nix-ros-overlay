
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, omni-base-2dnav, omni-base-laser-sensors }:
buildRosPackage {
  pname = "ros-humble-omni-base-navigation";
  version = "2.22.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/omni_base_navigation-release/archive/release/humble/omni_base_navigation/2.22.1-1.tar.gz";
    name = "2.22.1-1.tar.gz";
    sha256 = "30b95ec175d5a0606a2e2acfdd8567a2c0291f91f90b7b907a373c196e4df56c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ omni-base-2dnav omni-base-laser-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base Navigatgion metapackage";
    license = with lib.licenses; [ asl20 ];
  };
}

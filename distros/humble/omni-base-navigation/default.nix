
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, omni-base-2dnav, omni-base-laser-sensors }:
buildRosPackage {
  pname = "ros-humble-omni-base-navigation";
  version = "2.24.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/omni_base_navigation-release/archive/release/humble/omni_base_navigation/2.24.2-1.tar.gz";
    name = "2.24.2-1.tar.gz";
    sha256 = "3c6bdf1ddfedf1302609a48794f594dd912157a14e4015733ba5e2f5daab6ce5";
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

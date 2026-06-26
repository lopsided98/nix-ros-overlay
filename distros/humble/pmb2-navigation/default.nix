
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, pmb2-2dnav, pmb2-laser-sensors }:
buildRosPackage {
  pname = "ros-humble-pmb2-navigation";
  version = "4.21.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pmb2_navigation-release/archive/release/humble/pmb2_navigation/4.21.1-1.tar.gz";
    name = "4.21.1-1.tar.gz";
    sha256 = "d56ada6668789281d5d27b8f9fd6e77fbb0107071153d875c7ebd37aba21320a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ pmb2-2dnav pmb2-laser-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "PMB2 navigation metapackage";
    license = with lib.licenses; [ asl20 ];
  };
}

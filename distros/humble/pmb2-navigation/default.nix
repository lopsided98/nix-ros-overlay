
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, pmb2-2dnav, pmb2-laser-sensors, pmb2-rgbd-sensors }:
buildRosPackage {
  pname = "ros-humble-pmb2-navigation";
  version = "4.11.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_navigation/4.11.0-1.tar.gz";
    name = "4.11.0-1.tar.gz";
    sha256 = "cc8aeafd9b22c0b4ae6836db17e634785b727908f09664dae76a20ecec03ffc5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ pmb2-2dnav pmb2-laser-sensors pmb2-rgbd-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "PMB2 navigation metapackage";
    license = with lib.licenses; [ asl20 ];
  };
}

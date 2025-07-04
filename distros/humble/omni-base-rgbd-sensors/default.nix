
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-omni-base-rgbd-sensors";
  version = "2.18.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_navigation-release/archive/release/humble/omni_base_rgbd_sensors/2.18.0-1.tar.gz";
    name = "2.18.0-1.tar.gz";
    sha256 = "921bb642c7f7aa860481f71af143a2db8e6214ac715acec7c475d59be9edc623";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "omni_base-specific RGBD sensors module and params files.";
    license = with lib.licenses; [ asl20 ];
  };
}

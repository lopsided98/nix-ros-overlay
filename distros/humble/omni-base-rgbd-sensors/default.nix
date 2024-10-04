
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-omni-base-rgbd-sensors";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_navigation-release/archive/release/humble/omni_base_rgbd_sensors/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "b1acfe76143e1b3e3e2655f521a9e51d26e2b78afb1efa401acefdaac8c39bd2";
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


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-omni-base-rgbd-sensors";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_navigation-release/archive/release/humble/omni_base_rgbd_sensors/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "a47dec86e5fcb1e0dce3afb9686e825a85949f9aaefedc11aaa8288dc44304a0";
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

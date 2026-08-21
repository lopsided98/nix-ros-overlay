
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, omni-base-laser-sensors }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-laser-sensors";
  version = "2.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_navigation-release/archive/release/humble/tiago_pro_laser_sensors/2.15.0-1.tar.gz";
    name = "2.15.0-1.tar.gz";
    sha256 = "cf67b3c76751ed65f3f53cec5b3347d2b19746eb50f3dba493fae47d2d1682a8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ omni-base-laser-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "tiago_pro-specific laser sensors launch and config files.";
    license = with lib.licenses; [ asl20 ];
  };
}

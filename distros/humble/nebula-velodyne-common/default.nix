
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, ros-environment, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-nebula-velodyne-common";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_velodyne_common/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "7f87be0b9fc9c19ac1fc18a384c45c7ce6b13924a9e361982b7d2c949311233c";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  propagatedBuildInputs = [ nebula-core-common yaml-cpp ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Common Velodyne Libraries and headers";
    license = with lib.licenses; [ asl20 ];
  };
}

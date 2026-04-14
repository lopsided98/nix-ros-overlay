
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, ros-environment, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-nebula-velodyne-common";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_velodyne_common/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "4bcf583bcd51c62e53ce5faf801bc075d121ad49c82f5bc888d670680917dde1";
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

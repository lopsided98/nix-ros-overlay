
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, ros-environment, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-nebula-velodyne-common";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_velodyne_common/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "a1d039c14ef1b64fc358cd41ffd04516d22b583f6331f1eda8504c4d4797e9e1";
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

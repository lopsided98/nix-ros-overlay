
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, ros-environment, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-nebula-velodyne-common";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_velodyne_common/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "2083e2b839456b411fa635d7b64da62a2cfcb8ee26b22bf604820aca44968e91";
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

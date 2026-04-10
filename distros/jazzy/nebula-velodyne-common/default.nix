
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, ros-environment, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-nebula-velodyne-common";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_velodyne_common/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "0294fb4824897ba4c9809fc39b00f7acbffeb7bf9b059295142134f6ceee2323";
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


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, boost, nebula-core-common, nebula-core-hw-interfaces, nebula-velodyne-common }:
buildRosPackage {
  pname = "ros-humble-nebula-velodyne-hw-interfaces";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_velodyne_hw_interfaces/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "c67a0d51fafd0022834cb27a5a457960721feaeeed8c4714986236ee7e2c473b";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ];
  propagatedBuildInputs = [ boost nebula-core-common nebula-core-hw-interfaces nebula-velodyne-common ];
  nativeBuildInputs = [ autoware-cmake ];

  meta = {
    description = "Nebula HW Interfaces Velodyne";
    license = with lib.licenses; [ asl20 ];
  };
}

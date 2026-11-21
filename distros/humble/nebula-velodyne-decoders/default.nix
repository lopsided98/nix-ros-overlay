
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, autoware-cmake, boost, nebula-core-common, nebula-core-decoders, nebula-velodyne-common, ros-environment, velodyne-msgs }:
buildRosPackage {
  pname = "ros-humble-nebula-velodyne-decoders";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_velodyne_decoders/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "da6e478390f2a8dd580b6ec6447cbfc0a9402cb24e5c84484defc10c28d236bd";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  propagatedBuildInputs = [ angles boost nebula-core-common nebula-core-decoders nebula-velodyne-common velodyne-msgs ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Velodyne Decoders Library";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, boost, nebula-core-common, ros-environment }:
buildRosPackage {
  pname = "ros-humble-nebula-continental-common";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_continental_common/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "142d587931eda14a25d10d2ea6d754750379bb1a9d0b71ef14eac5503f238447";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  propagatedBuildInputs = [ boost nebula-core-common ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Common Continental Libraries and headers";
    license = with lib.licenses; [ asl20 ];
  };
}

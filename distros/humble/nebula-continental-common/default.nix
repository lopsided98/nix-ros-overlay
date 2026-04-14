
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, boost, nebula-core-common, ros-environment }:
buildRosPackage {
  pname = "ros-humble-nebula-continental-common";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_continental_common/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "8d07ee13a1c64dad6616796e95af8ea544cad54dd49b29d5a873cdddb1fe4f9a";
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

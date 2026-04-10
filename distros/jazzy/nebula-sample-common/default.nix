
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, nebula-core-decoders, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-nebula-sample-common";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_sample_common/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "eb6cd62fa348bc0f51219c046949b09642b46a09c11e3b85570e8337bdcbdab4";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  propagatedBuildInputs = [ nebula-core-common nebula-core-decoders ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Sample Common Libraries and Headers";
    license = with lib.licenses; [ asl20 ];
  };
}

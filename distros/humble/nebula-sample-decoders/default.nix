
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, nebula-core-decoders, nebula-sample-common, ros-environment }:
buildRosPackage {
  pname = "ros-humble-nebula-sample-decoders";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_sample_decoders/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "2db44dd8eb5af1987dcff088f65b5faea19c94ff3113a7d176992b2324d54ce7";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  propagatedBuildInputs = [ nebula-core-common nebula-core-decoders nebula-sample-common ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Sample Decoders Library";
    license = with lib.licenses; [ asl20 ];
  };
}

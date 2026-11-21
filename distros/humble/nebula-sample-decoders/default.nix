
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, nebula-core-decoders, nebula-sample-common, ros-environment }:
buildRosPackage {
  pname = "ros-humble-nebula-sample-decoders";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_sample_decoders/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "f6be59a0eeb10ab2ff6769cf3a9212f3f3a19252fb7de65dd9fc15683e1701f7";
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


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, nebula-core-decoders, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-nebula-sample-common";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_sample_common/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "3e167cb736d4b6ed52ab3a2ab6267404f4eec982e3f1a152d046778c5cbca4b2";
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


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, nebula-core-decoders, ros-environment }:
buildRosPackage {
  pname = "ros-humble-nebula-sample-common";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_sample_common/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "448cbf2268ea81bed0ee4f883d1fb5a80ce711e4224aac6341e9f7eca56158ec";
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


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, boost, nebula-core-common, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-nebula-continental-common";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_continental_common/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "b42a4a3ba0c92a24c424ab8d46b457c190abe621bc5abb68e05c26f5b0c4b3bf";
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

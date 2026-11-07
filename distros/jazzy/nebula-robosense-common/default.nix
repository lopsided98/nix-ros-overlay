
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-nebula-robosense-common";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_robosense_common/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "c1d39e9f43280065be95f19f9f300198aae536fef2759d48b4d7192a6c65dd82";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  propagatedBuildInputs = [ nebula-core-common ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Common Robosense Libraries and headers";
    license = with lib.licenses; [ asl20 ];
  };
}

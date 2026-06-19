
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-nebula-hesai-common";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_hesai_common/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "0487cff0e966c4ddcd39b48daa26c0274e363399b5e40206df9d12a29d522ce4";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  propagatedBuildInputs = [ nebula-core-common ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Common Hesai Libraries and headers";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, ros-environment }:
buildRosPackage {
  pname = "ros-humble-nebula-hesai-common";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_hesai_common/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "c7e8327ab9ffa5d35456a76eafbe829bf9a984836f6fcdef7447ed7ae455d2fd";
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


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-nebula-robosense-common";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_robosense_common/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "015e1f8c6936f5c11b7cad33370dfad234bdf8abd60a1f20160a94407c64cf18";
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

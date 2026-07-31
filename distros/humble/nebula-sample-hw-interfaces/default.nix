
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, nebula-core-hw-interfaces, nebula-sample-common }:
buildRosPackage {
  pname = "ros-humble-nebula-sample-hw-interfaces";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_sample_hw_interfaces/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "a6310a1a82869d3060a4fe22ec863e5a3941bafcfab6230b175900a92d844344";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ];
  propagatedBuildInputs = [ nebula-core-common nebula-core-hw-interfaces nebula-sample-common ];
  nativeBuildInputs = [ autoware-cmake ];

  meta = {
    description = "Nebula Sample HW Interfaces";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-continental-common, nebula-core-common, nebula-core-hw-interfaces, nebula-msgs }:
buildRosPackage {
  pname = "ros-humble-nebula-continental-hw-interfaces";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_continental_hw_interfaces/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "9c5af697940ddf73a6b9f7644f91114b22f17453a9ea21128b29e4b0a83e055f";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ];
  propagatedBuildInputs = [ nebula-continental-common nebula-core-common nebula-core-hw-interfaces nebula-msgs ];
  nativeBuildInputs = [ autoware-cmake ];

  meta = {
    description = "Nebula HW Interfaces Continental";
    license = with lib.licenses; [ asl20 ];
  };
}

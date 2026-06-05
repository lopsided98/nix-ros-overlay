
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, nebula-core-hw-interfaces, nebula-sample-common }:
buildRosPackage {
  pname = "ros-humble-nebula-sample-hw-interfaces";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_sample_hw_interfaces/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "79aaba1218223635e3bed2c4db24e1cf96c4e093690e9f8b3efaf2cf23d18e31";
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

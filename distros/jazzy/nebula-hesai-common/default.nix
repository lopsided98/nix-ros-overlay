
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-nebula-hesai-common";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_hesai_common/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "687de058b89dfdf62c40403415b8b5af18998f495c99fe7ae6475b887ee3b814";
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


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-kilted-leo-description";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/kilted/leo_description/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "90155fe933eb5e7dad978e0be6158685cff9d98468bf3e850a56359e93b48c27";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF Description package for Leo Rover";
    license = with lib.licenses; [ mit ];
  };
}

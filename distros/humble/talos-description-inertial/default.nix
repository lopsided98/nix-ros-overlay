
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-python, xacro }:
buildRosPackage {
  pname = "ros-humble-talos-description-inertial";
  version = "2.10.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_description_inertial/2.10.3-1.tar.gz";
    name = "2.10.3-1.tar.gz";
    sha256 = "d8386d06b8fc9c2787cf78e35b4544150cb01766506414fa3cb8aef5cea401c5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "Inertial parameters of talos";
    license = with lib.licenses; [ asl20 ];
  };
}
